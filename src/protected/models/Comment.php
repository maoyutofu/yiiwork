<?php
class Comment extends CActiveRecord
{
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return "{{comment}}";
	}

	public function attributeLabels()
	{
		return array(
			'nickname' => '昵称',
			'email' => '电子邮箱',
			'content' => '评论内容',
			'aid' => 'AID'
			);
	}

	public function rules()
	{
		return array(
			array('nickname', 'required', 'message'=>'昵称必填'),
			array('email', 'required', 'message'=>'电子邮箱必填'),
			array('content', 'required', 'message'=>'评论内容必填'),
			array('aid', 'numerical', 'message'=>'aid必填，且只能为数字')
			);
	}
}