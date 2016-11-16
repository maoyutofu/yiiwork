<?php
/**
 * 站点信息配置
 */
class SiteController extends Controller
{
	public function actionIndex()
	{
		$siteModel = Site::model();
		$siteInfo = $siteModel->findByPk('1');
		if(isset($_POST['Site']))
		{
			$siteInfo->attributes = $_POST['Site'];
			if($siteInfo->save())
			{
				Yii::app()->user->setFlash('success', '更新成功');
			}
		}
		$data = array(
			'siteModel' => $siteInfo,
			);
		$this->render('index', $data);
	}

	public function actionDelcache()
	{
		if($_SERVER['REQUEST_METHOD'] == 'POST')
		{
			Yii::app()->cache->flush();
			Yii::app()->user->setFlash('success', '缓存清除成功');
		}
		$this->render('cache');
	}

	public function actionSitemap()
	{
		if($_SERVER['REQUEST_METHOD'] == 'POST')
		{
			$time = strtotime(date("Y-m-d",mktime(0,0,0,date("m"),date("d")-7,date("Y"))));
			$sql = 'SELECT aid,time FROM {{article}} WHERE time >= '.$time.' ORDER BY time DESC';
			$articleInfo = Article::model()->findAllBySql($sql);
			$str = '<?xml version="1.0" encoding="utf-8"?><urlset></urlset>';
			$xml = simplexml_load_string($str);
			$data_array = array();
			foreach ($articleInfo as $v) {
				$data = array(
				'loc' => Yii::app()->request->hostInfo . $this->createURL('/article/index', array('aid'=>$v->aid)),
				'lastmod' => date('Y-m-d', $v->time),
				'changefreq' => 'weekly',
				'priority' => '0.8'
				);
				array_push($data_array, $data);
			}
			foreach($data_array as $data)
			{
				$item = $xml->addChild('url');
				if(is_array($data))
				{
					foreach ($data as $key => $row) 
					{
						$node = $item->addChild($key, $row);
					}
				}
			}
			$xml->asXML("sitemap.xml");
			Yii::app()->user->setFlash('success', '<a target="_blank" href="'.Yii::app()->request->baseURL.'/sitemap.xml">sitemap.xml</a>生成成功');
		}
		$this->render('sitemap');
	}
}