<?php
/**
 * 网站首页控制器
 */
class IndexController extends Controller 
{
	/*
	public function filters()
	{
		return array(
			// 整页缓存
			array(
				//  + index缓存index方法
				'system.web.widgets.COutputCache + index',
				'duration' => 3600
				),
			);
	}
	*/

	/**
	 * 默认方法
	 * @return [type] [description]
	 */
	public function actionIndex() 
	{	
		/*$articleModel = Article::model();
		// 最新文章
		$sqlNew = 'SELECT aid,title,thumb,info,time,cid FROM {{article}} ORDER BY time DESC LIMIT 17';
		$articleNew = $articleModel->findAllBySql($sqlNew);
		$data = array(
			'articleNew'=>$articleNew,
			);
		$this->render('index', $data);*/
		$cri = new CDbCriteria();
		$articleModel = Article::model();
		$total = $articleModel->count($cri);

		$pager = new CPagination($total);
		$pager->pageSize = 11;
		$cri->order = 'time DESC';
		$pager->applyLimit($cri);
		$articleInfo = $articleModel->findAll($cri);
		
		$data = array(
				'articleNew'=> $articleInfo,
				'pages'=>$pager,
			);
		$this->render('index', $data);
	}

	public function actionError() 
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
			{
				echo $error['message'];
				return;
			} 
			else 
			{
				$this->renderPartial('error', $error);
			}
		}
		$this->renderPartial('404', $error);
	}
}