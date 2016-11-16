<?php
/**
 * 栏目控制器
 */

class CategoryController extends Controller 
{

	public function filters()
	{
		return array(
			// 整页缓存
			array(
				//  + index缓存index方法
				'system.web.widgets.COutputCache + index',
				'duration' => 3600,
				'varyByParam' => array('cid','page'),
				),
			);
	}

	/**
	 * 默认方法
	 */
	public function actionIndex($cid)
	{
		$cri = new CDbCriteria();
		$cri->addCondition('cid='.$cid);
		$articleModel = Article::model();
		$total = $articleModel->count($cri);

		$pager = new CPagination($total);
		$pager->pageSize = 11;
		$cri->order = 'time DESC';
		$pager->applyLimit($cri);
		$articleInfo = $articleModel->findAll($cri);

		$title = '';
		if(count($articleInfo) > 0){
			$title = $articleInfo[0]['category']->cname;
		} else {
			$categoryInfo = Category::model()->findByPk($cid);
			$title = $categoryInfo->cname;
		}
		$data = array(
				'articleInfo'=> $articleInfo,
				'pages'=>$pager,
				'title' => $title,
				'cid'  => $cid
			);
		$this->render('index', $data);
	}
}