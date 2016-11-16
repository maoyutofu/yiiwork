<?php
class Tag extends CActiveRecord
{
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return "{{tag}}";
	}

	public function common()
	{
		$sql = 'SELECT tid,name FROM {{tag}} LIMIT 21';
		return $this->findAllBySql($sql);
	}
}