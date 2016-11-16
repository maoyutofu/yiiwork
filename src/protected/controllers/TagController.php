<?php
class TagController extends Controller
{
	public function filters()
	{
		return array(
			// 整页缓存
			array(
				//  + index缓存index方法
				'system.web.widgets.COutputCache + index',
				'duration' => 3600,
				'varyByParam' => array('tid'),
				),
			);
	}

	public function actionIndex($tid)
	{

		$articleTagInfo = ArticleTag::model()->findAll('tid=:tid', array('tid'=>$tid));
		$articleInfo = array();
		$title = '';
		if(count($articleTagInfo) > 0){
			$title = $articleTagInfo[0]['tag']->name;
		}
		foreach ($articleTagInfo  as $v) {
			array_push($articleInfo, $v['article']);
		}
		$data = array(
				'articleInfo'=> $articleInfo,
				'title' => $title,
				'tid'  => $tid,
			);
		$this->render('index', $data);
	}
}