<?php

// uncomment the following to define a path alias
// Yii::setPathOfAlias('local','path/to/local-folder');

// This is the main Web application configuration. Any writable
// CWebApplication properties can be configured here.
return array(
	'basePath'=>dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name'=>'YiiWork',

	// preloading 'log' component
	'preload'=>array('log'),

	// 设置默认控制器
	'defaultController' => 'index',
	
	// autoloading model and component classes
	'import'=>array(
		'application.models.*',
		'application.components.*',
	),

	'modules'=>array(
		// uncomment the following to enable the Gii tool
		/*
		'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'Enter Your Password Here',
			// If removed, Gii defaults to localhost only. Edit carefully to taste.
			'ipFilters'=>array('127.0.0.1','::1'),
		),
		*/
		'admin',
	),

	// application components
	'components'=>array(
		'user'=>array(
			// enable cookie-based authentication
			'allowAutoLogin'=>true,
			// 配置登录地址，未登录跳转地址
			'loginUrl'=>array('admin/login/index'),
		),
		/*缩略图类扩展 ext代表extendsions目录*/
		'thumb'=>array(
			'class' => 'ext.CThumb.CThumb'
			),
		// 缓存组件
		'cache'=>array(
			'class'=>'system.caching.CFileCache'
			),
		// uncomment the following to enable URLs in path-format
		/*
		'urlManager'=>array(
			'urlFormat'=>'path',
			'rules'=>array(
				'<controller:\w+>/<id:\d+>'=>'<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
				'<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
			),
		),
		*/
		// 路由、伪静态配置
		'urlManager'=>array(
			'urlFormat'=>'path',
			// 不显示index.php
			'showScriptName'=>false,
			'rules'=>array(
				'index.html' => array('index'),
				'error.html' => array('index/error'),
				'a/<aid:\d+>' => array('article/index', 'urlSuffix'=>'.html'),
				'c/<cid:\d+>' => array('category/index', 'urlSuffix'=>'.html'),
				't/<tid:\d+>' => array('tag/index', 'urlSuffix'=>'.html'),
				// 'c/<cid:\d+>/p<page:\d+>' => array('category/index', 'surlSuffix' => '.html')
				),
			),
		/*
		'db'=>array(
			'connectionString' => 'sqlite:'.dirname(__FILE__).'/../data/testdrive.db',
		),
		*/
		// uncomment the following to use a MySQL database
		'db'=>array(
			'connectionString' => 'mysql:host=127.0.0.1;port=3306;dbname=yiiwork',
			'emulatePrepare' => true,
			'username' => 'root',
			'password' => 'root',
			'charset' => 'utf8',
			'tablePrefix' => 'yw_',
			'enableParamLogging' => true,
		),
		'errorHandler'=>array(
			// use 'site/error' action to display errors
			'errorAction'=>'index/error',
		),
		'log'=>array(
			'class'=>'CLogRouter',
			'routes'=>array(
				array(
					'class'=>'CFileLogRoute',
					'levels'=>'error, warning',
				),
				// uncomment the following to show log messages on web pages
				// 调试，日志信息，开发完后记得关闭
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),
	),

	// application-level parameters that can be accessed
	// using Yii::app()->params['paramName']
	'params'=>array(
		// this is used in contact page
		'adminEmail'=>'36634584@qq.com',
	),
);
