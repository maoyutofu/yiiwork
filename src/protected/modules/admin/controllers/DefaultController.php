<?php
class DefaultController extends Controller 
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
				'actions'=>array('index','copy'),
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

	public function actionIndex()
	{
		$this->renderPartial('index');
	}

	public function actionCopy() 
	{
		$this->renderPartial('copy');
	}
}