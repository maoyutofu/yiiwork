<?php
class Link extends CActiveRecord
{
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return "{{link}}";
	}

	public function attributeLabels()
	{
		return array(
			'name'=>'网站名称',
			'href'=>'链接地址',
			'no'=>'显示顺序'
			);
	}

	public function rules()
	{
		return array(
				array('name', 'required', 'message'=>'网站名称不能为空'),
				array('href', 'required', 'message'=>'链接地址不能为空'),
				array('no', 'numerical', 'message'=>'显示顺序不能为空，且只能是数字')
			);
	}

	public function common()
	{
		$common = array();
		$sql = 'SELECT id,name,href FROM {{link}} WHERE 1=1 ORDER BY no ASC';
		$common['link'] = $this->findAllBySql($sql);
		return $common;
	}
}