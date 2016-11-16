<?php
/**
* 文章模型
*/
class Article extends CActiveRecord
{
	public $label;

	public static function model($className = __CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return "{{article}}";
	}

	public function attributeLabels()
	{
		return array(
			'title' => '标题',
			'type' => '类型',
			'cid' => '栏目',
			'thumb' => '缩略图',
			'info' => '摘要',
			'content' => '内容',
			'author' => '作者',
			'label' => '标签'
			);
	}

	public function rules()
	{
		return array(
			array('title', 'required', 'message'=>'标题必填'),
			// safe表示安全，不过滤
			// array('info,content', 'safe'),
			// 不要类型，默认为普通
			array('type', 'in', 'range'=>array(0,1), 'message'=>'请选择类型'),
			array('cid', 'check_category'),
			// 不要摘要，从文章截取
			// array('info', 'required', 'message'=>'摘要必填'),
			// array('thumb', 'file', 'types'=>'jpg,gif,png,jpeg','maxSize'=>1048576,'message'=>'没有上传或者类型不符'),
			// 缩略图 不通过上传获取，以文章里面的第一章图片作为封面
			array('type,info,thumb', 'safe'),
			array('content', 'required', 'message'=>'内容必填'),
			array('author', 'required', 'message'=>'作者必填'),
			array('label', 'check_label'),
			);
	}
	public function check_label()
	{
		$arr = explode(',' , $this->label, -1);
		$len = count($arr);
		if($len <= 3)
		{
			foreach($arr as $v)
			{
				if(strlen($v) < 3 || strlen($v) > 12)
				{
					$this->addError('label', '单个标签的内容太长');
				}
			}
		}
		else if($len > 3)
		{
			$this->addError('label', '最大仅允许出现3个标签');
		}
		if($len == 0 && strlen(trim($this->label)) > 0)
		{
			if(strlen($this->label) < 6 || strlen($this->label) > 12)
			{
				$this->addError('label', '每个标签只能在2个汉字和4个汉字之间');
			}
		}
	}
	public function check_category()
	{
		if($this->cid <= 0)
		{
			$this->addError('cid', '请选择栏目');
		}
	}

	public function relations()
	{
		return array(
			//模型 与 关联字段
			'category'=>array(self::BELONGS_TO,'Category','cid'),
			);
	}

	/**
	* 导航栏
	*/
	public function common()
	{
		$common = array();
		$sql = 'SELECT cid,cname FROM {{category}} ORDER BY cno ASC LIMIT 6';
		$common['nav'] = Category::model()->findAllBySql($sql);
		return $common;
	}

	/**
	 * 热门文章
	 * @return [type] [description]
	 */
	public function hot()
	{
		$sql = 'SELECT aid,title FROM {{article}} ORDER BY view DESC LIMIT 21';
		return $this->findAllBySql($sql);
	}

}