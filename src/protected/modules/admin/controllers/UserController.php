<?php
/**
* 用户后台管理控制器
*/
class UserController extends Controller
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
				'actions'=>array('passwd'),
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

	/**
	*修改密码
	*/
	public function actionPasswd()
	{
		$userModel = User::model();
		if(isset($_POST['User']))
		{
			$userInfo = $userModel->find('username=:username', array(':username'=>Yii::app()->user->name));
			// 属性放到attributes中后才可以开始验证
			$userModel->attributes = $_POST['User'];
			//开始验证
			if($userModel->validate())
			{
				$password = md5($_POST['User']['password1']);
				if($userModel->updateByPk($userInfo->uid, array('password'=>$password)))
				{
					Yii::app()->user->setFlash('success', '修改密码成功');
				}
			}
		}
		$this->render('index', array('userModel'=>$userModel));
	}
}