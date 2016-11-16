<?php
/**
* 文章管理控制器
*/
class ArticleController extends Controller
{
	/**
	*权限验证
	*/
	public function filters()
	{
		return array(
			'accessControl',
			// 表示index不进行验证，通过+index，表示把index加入验证
			// 'accessControl - index',
			);
	}

	/*
	* 权限规则
	* allow 允许
	* deny 拒绝
	* *代表所有用户
	* @ 代表登录用户
	* ? 代表匿名用户
	* 遵循匹配第一条规则，觉得授权结果 
	*/
	public function accessRules()
	{
		// 以第一条为准则，往后推。权限由大到小
		return array(
			array(
				// 允许访问
				'allow',
				// 方法名
				'actions'=>array('index','del','edit','add'),
				// @表示登录过的所有用户，也可以具体指定用户名
				'users'=>array('@')
				),
			array(
				// 拒绝所有访问
				'deny',
				// 所有用户
				'users'=>array('*')
				),
			);
	}

	public function actionIndex()
	{
		$cri = new CDbCriteria();
		$articleModel = Article::model();
		$total = $articleModel->count($cri);

		$pager = new CPagination($total);
		$pager->pageSize = 9;
		$cri->order = 'time DESC';
		$pager->applyLimit($cri);
		$articleInfo = $articleModel->findAll($cri);

		$data = array(
			'articleInfo'=>$articleInfo,
			'pages'=>$pager
			);

		$this->render('index', $data);
	}
	function saveLabel($aid, $label)
	{
		// 直接保存
		// 判断标签是否存在
		$tagModel = new Tag();
		$sql = 'SELECT tid FROM {{tag}} WHERE name=:name';
		$tagInfo = $tagModel->findBySql($sql, array('name'=>$label));
		$tid = 0;
		if(empty($tagInfo))
		{
			$tagModel->name =$label;
			if($tagModel->save())
			{
				$tid = $tagModel->tid;
			}
		}
		else
		{
			$tid = $tagInfo->tid;
		}
		$articleTagModel = new ArticleTag();
		$articleTagModel->aid = $aid;
		$articleTagModel->tid = $tid;
		return $articleTagModel->save();
	}
	public function actionAdd()
	{
		$articleModel = new Article();
		$categoryModel = Category::model();
		$categoryInfo = $categoryModel->findAllBySql('SELECT cid,cname FROM {{category}}');
		$categoryArray = array();
		$categoryArray[] = '请选择';
		foreach ($categoryInfo as $v) {
			$categoryArray[$v->cid] = $v->cname;
		}
		$data = array(
			'articleModel' => $articleModel,
			'categoryArray' => $categoryArray
			);
		if(isset($_POST['Article']))
		{
			$_POST['Article']['info'] = getInfoByContent($_POST['Article']['content']);
			$_POST['Article']['thumb'] = getPicByContent($_POST['Article']['content']);
			$articleModel->attributes = $_POST['Article'];
			$articleModel->time = time();
			if($articleModel->save())
			{
				// 开始保存标签
				$arr = explode(',' , $articleModel->label);
				$len = count($arr);
				if($len == 0 && strlen(trim($articleModel->label)) > 0)
				{
					$this->saveLabel($articleModel->aid, trim($articleModel->label));
				}
				else
				{
					foreach ($arr as $v) {
						$this->saveLabel($articleModel->aid, trim($v));
					}
				}
				$this->redirect(array('index'));
			}
		}
		$this->render('add', $data);
	}

	public function actionEdit($aid)
	{
		
		$articleModel = Article::model();
		$articleInfo = $articleModel->findByPk($aid);
		$articleTagModel = new ArticleTag();

		if(isset($_POST['Article']))
		{
			$_POST['Article']['info'] = strip_tags(mb_substr($_POST['Article']['content'], 0, 490, 'utf-8'));
			$_POST['Article']['thumb'] = getPicByContent($_POST['Article']['content']);
			$articleInfo->attributes = $_POST['Article'];
			if($articleInfo->validate())
			{
				$articleInfo->time = time();
				if($articleInfo->save())
				{
					// 删除之前的文章标签
					$articleTagModel->deleteAll('aid=:aid', array('aid'=>$aid));
					// 保存新文章标签，等同于修改了
					// 开始保存标签
					$arr = explode(',' , $articleInfo->label);
					$len = count($arr);
					if($len == 0 && strlen(trim($articleInfo->label)) > 0)
					{
						$this->saveLabel($articleInfo->aid, trim($articleInfo->label));
					}
					else
					{
						foreach ($arr as $v) {
							$this->saveLabel($articleInfo->aid, trim($v));
						}
					}
					$this->redirect(array('index'));
				}
			}
		}

		$categoryModel = Category::model();
		$categoryInfo = $categoryModel->findAllBySql('SELECT cid,cname FROM {{category}}');
		$categoryArray = array();
		$categoryArray[] = '请选择';
		foreach ($categoryInfo as $v) {
			$categoryArray[$v->cid] = $v->cname;
		}

		$articleTagInfo = $articleTagModel->findAll('aid=:aid', array('aid'=>$aid));
		$label = "";
		$len = count($articleTagInfo);
		$index = 0;
		foreach ($articleTagInfo as $v) {
			$index++;
			$label .= $v['tag']->name;
			if($index < $len)
			{
				$label .=  ",";
			}
		}
		$articleInfo->label = $label;
		$data = array(
			'articleModel' =>$articleInfo,
			'categoryArray' => $categoryArray
			);

		$this->render('edit', $data);
	}

	public function actionDel($aid)
	{
		Article::model()->deleteByPk($aid);
		ArticleTag::model()->deleteAll('aid=:aid', array('aid'=>$aid));
		$this->redirect(array('index'));
	}
}