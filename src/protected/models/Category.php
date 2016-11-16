<?php
class Category extends CActiveRecord
{
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return "{{category}}";
	}

	public function attributeLabels()
	{
		return array(
			'cname' => '栏目名称',
			'cno' => '显示顺序',
			);
	}

	public function rules()
	{
		return array(
			array('cname', 'required', 'message'=>'栏目名称必填'),
			array('cno', 'numerical', 'message'=>'顺序号必填且只能为数字'),
			);
	}

	public function relations()
	{
		return array(
			'article'=>array(self::HAS_MANY, 'Article', 'cid'),
			);
	}
}