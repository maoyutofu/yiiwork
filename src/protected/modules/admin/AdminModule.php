<?php
class AdminModule extends CWebModule
{
	public function init()
	{
		$this->setImport(array(
				'admin.models.*',
				'admin.components.*',
			));
		Yii::app()->setComponents(array(
			// 设置session作用域于那个modules
			'user' => array('stateKeyPrefix' =>'admin'),
			));
	}

	public function beforeControllerAction($controller, $action)
	{
		if(parent::beforeControllerAction($controller, $action))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}