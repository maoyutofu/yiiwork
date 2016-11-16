<?php
class ArticleTag extends CActiveRecord
{
	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return "{{articletag}}";
	}

	public function relations()
	{
		return array(
				'tag'=>array(self::BELONGS_TO, 'Tag', 'tid'),
				'article'=>array(self::BELONGS_TO, 'Article', 'aid'),
			);
	}
}