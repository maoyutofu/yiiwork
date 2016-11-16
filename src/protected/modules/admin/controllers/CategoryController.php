<?php
/**
* 栏目控制器
*/
class CategoryController extends Controller
{
	/**
	*权限验证
	*/
	public function filters()
	{
		return array(
			'accessControl',
			);
	}

	/*
	*权限规则
	*/
	public function accessRules()
	{
		// 以第一条为准则，往后推。权限由大到小
		return array(
			array(
				// 允许访问
				'allow',
				// 方法名
				'actions'=>array('index','del','add', 'edit'),
				// @表示登录过的用户
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

	/*
	* 查看栏目
	*/
	public function actionIndex()
	{
		$categoryModel = Category::model();
		$sql = 'SELECT cid,cname,cno FROM {{category}} ORDER BY cno ASC';
		$categoryInfo = $categoryModel->findAllBySql($sql);
		$this->render('index', array('categoryInfo'=>$categoryInfo));
	}

	/**
	* 添加栏目
	*/
	public function actionAdd()
	{
		//new时的save表示add 不new的model表示update
		$categoryModel = new Category();
		if(isset($_POST['Category']))
		{
			$categoryModel->attributes = $_POST['Category'];
			// save方法会自动调用校验方法
			if($categoryModel->save())
			{
				$this->redirect(array('index'));
			}
		}
		$this->render('add', array('categoryModel'=>$categoryModel));
	}

	/**
	* 编辑栏目
	*/
	public function actionEdit($cid)
	{
		$categoryModel = Category::model();
		$categoryInfo = $categoryModel->findByPk($cid);
		if(isset($_POST['Category']))
		{
			$categoryInfo->attributes = $_POST['Category'];
			if($categoryInfo->save())
			{
				$this->redirect(array('index'));
			}
		}
		$this->render('edit', array('categoryModel'=>$categoryInfo));
	}

	/**
	* 删除栏目
	*/
	public function actionDel($cid)
	{
		$articleModel = Article::model();
		$sql = 'SELECT aid FROM {{article}} WHERE cid='.$cid;
		$articleInfo = $articleModel->findBySql($sql);
		if(is_object($articleInfo))
		{
			Yii::app()->user->setFlash('hasArticle', '栏目下面存在文章，请先删除文章');
		}
		else
		{
			Category::model()->deleteByPk($cid);
		}
		$this->redirect(array('index'));
	}
}