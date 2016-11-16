<?php
class Site extends CActiveRecord
{
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return "{{site}}";
	}

	public function attributeLabels()
	{
		return array(
			'name' => '博客名称',
			'title' => '博客标题',
			'keywords' => '关键字',
			'description' => '描述',
			'statistical' => '第三方统计代码',
			'slogan' => '标语/口号',
			);
	}

	public function rules()
	{
		return array(
				array('name,title,keywords,description,statistical,slogan', 'safe'),
			);
	}

	public function common()
	{
		$common = array();
		$common['site'] = $this->findByPk('1');
		return $common;
	}
}