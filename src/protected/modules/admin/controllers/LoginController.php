<?php
/**
*后台控制器
*/
class LoginController extends Controller
{
	/**
	*后台登录模版
	*/
	public function actionIndex()
	{
		// 测试数据库是否连通
		// var_dump(Yii::app()->db);die;
		// $userInfo = User::model()->find('username=:username',array(':username'=>'admin'));
		// p($userInfo->password);die;
		$loginForm = new LoginForm();
		if(isset($_POST['LoginForm']))
		{
			$loginForm->attributes = $_POST['LoginForm'];
			// 验证，并往session中存入信息（如用户信息，记住我等） login()
			if($loginForm->validate() && $loginForm->login())
			{
				Yii::app()->session['logintime'] = time();
				// echo Yii::app()->user->name;die;
				$this->redirect(array('default/index'));
			}
		}
		$this->render('index', array('loginForm' => $loginForm));
	}

	public function actions()
	{
		return array(
			'captcha' => array(
				'class' => 'system.web.widgets.captcha.CCaptchaAction',
				'height' => 36,
				'width' => 80,
				'minLength' => 4,
				'maxLength' => 4
				),
			);
	}

	public function actionOut()
	{
		// Yii::app()->session->clear();
		// Yii::app()->session->destory();
		Yii::app()->user->logout();
		$this->redirect(array('index'));
	}
}