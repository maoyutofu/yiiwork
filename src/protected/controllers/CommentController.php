<?php
class CommentController extends Controller
{
	public function actionIndex()
	{
		$commentModel = new Comment();
		if(isset($_POST['Comment']))
		{
			$commentModel->attributes = $_POST['Comment'];
			$commentModel->time = time();
			$commentModel->ip = Yii::app()->request->userHostAddress;
			if($commentModel->save())
			{
			}
		}
		$this->redirect(array('article/index', 'aid'=>$commentModel->attributes['aid'], '#'=>'comment'));
	}
}