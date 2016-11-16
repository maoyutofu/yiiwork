<?php
class LinkController extends Controller
{
	public function actionIndex()
	{
		$cri = new CDbCriteria();
		$cri->order = 'no ASC';
		$linkModel = Link::model();
		$linkInfo = $linkModel->findAll($cri);
		$data = array(
			'linkInfo' => $linkInfo,
			);
		$this->render('index', $data);
	}

	public function actionAdd()
	{
		$linkModel = new Link();
		if (isset($_POST['Link']))
		{
			$linkModel->attributes = $_POST['Link'];
			if ($linkModel->save())
			{
				$this->redirect(array('index'));
			}
		}
		$this->render('add',array('linkModel'=>$linkModel));
	}

	public function actionEdit($id)
	{
		$linkModel = Link::model();
		$linkInfo = $linkModel->findByPk($id);
		if(isset($_POST['Link']))
		{
			$linkInfo->attributes = $_POST['Link'];
			if($linkInfo->save())
			{
				Yii::app()->user->setFlash('success', '修改成功');
				$this->redirect(array('index'));
			}
		}
		$data = array(
			'linkModel'=>$linkInfo
			);
		$this->render('edit',$data);
	}

	public function actionDel($id)
	{
		Link::model()->deleteByPk($id);
		$this->redirect(array('index'));
	}
}