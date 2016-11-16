<?php
/**
 * 文章控制器
 */
class ArticleController extends Controller
 {

 	/*public function filters()
	{
		return array(
			// 整页缓存
			array(
				//  + index缓存index方法
				'system.web.widgets.COutputCache + index',
				'duration' => 120,
				'varyByParam' => array('aid'),
				),
			);
	}*/

	/**
	 * 默认方法
	 * @return [type] [description]
	 */
	public function actionIndex($aid) 
	{
		$artcileModel = Article::model();
		$sql = 'SELECT aid,title,time,thumb,content,type,info,cid,view,author FROM {{article}} WHERE aid='.$aid;
		$articleInfo = $artcileModel->findBySql($sql);
		if (empty($articleInfo)) {
			throw new CHttpException(404,'抱歉，您访问的页面不存在或该资源已被永久性移除。');
		}
		$articleInfo->view = $articleInfo->view + 1;
		// $artcileModel->updateByPk($aid, array('view' => $articleInfo->view));
		// 用updateCounters带代替更新计数器
		$artcileModel->updateCounters(array('view'=>1), 'aid='.$aid);
		//$commentModel = Comment::model();
		//$sql = 'SELECT id,aid,nickname,email,content,time,ip FROM {{comment}} WHERE aid='.$aid;
		//$commentInfo = $commentModel->findAllBySql($sql);
		//$this->render('index', array('articleInfo'=>$articleInfo,'commentModel'=>$commentModel,'commentInfo'=>$commentInfo));
		$this->render('index', array('articleInfo'=>$articleInfo));
	}
}