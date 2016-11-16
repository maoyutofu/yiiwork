<?php
/**
* 后台用户模型
*/
class User extends CActiveRecord
{
	public $password1;
	public $password2;
	
	/*
	* 必不可缺的方法1，返回模型
	*/
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}

	/**
	* 必不可缺的方法2 返回表名
	*/
	public function tableName()
	{
		return "{{admin}}";
	}

	/**
	* 模型标签
	*/
	public function attributeLabels()
	{
		return array(
			// password根据数据库字段提取，如果没有要定义属性
			'password' => '原始密码',
			// password1 数据库没有字段，要定义属性
			'password1' => '新密码',
			'password2' => '确认密码',
			);
	}

	/**
	* 定义规则
	* 规则列表
	* boolean: 确保特性值一个布尔值
	* captcha: 确保特性值等于 CAPTCHA 中显示验证码
	* compare: 确保特性等于另外一个特性或常量
	* email: 确保特性是一个有效的email地址
	* default: 指定特性默认值
	* exist: 确保特性值可以在制定表的列中可以找到
	* file: 确保特性含有一个上传文件的名字
	* filter: 通过一个过滤器改变此特性
	* in: 确保数据在一个预先指定的范围内
	* lsength: 确保数据长度在一个指定的范围内
	* match：确保可以匹配一个正则表达式
	* numerical: 确保是一个有效的数字
	* required: 确保不为空
	* type: 确保特性是指定的数据类型
	* unique: 确保特性在数据库表的列中是唯一的
	* url: 确保数据是一个有效的URL
	*/
	public function rules()
	{
		return array(
			array('password', 'required', 'message'=>'原始密码必填'),
			// 自定义方法验证
			array('password', 'check_passwd'),
			array('password1', 'required', 'message'=>'新密码必填'),
			array('password2', 'required', 'message'=>'确认密码必填'),
			// 比较两次输入是否一致
			array('password2', 'compare', 'compareAttribute'=>'password1', 'message'=>'两次密码不一致'),
			);
	}

	public function check_passwd()
	{
		$userInfo = $this->find('username=:username', array(':username'=>Yii::app()->user->name));
		if(md5($this->password) != $userInfo->password)
		{
			// 表单名，错误信息
			$this->addError('password', '原始密码不正确');
		}
	}
}