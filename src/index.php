<?php

// 网站根路径设置
define ( 'SITE_PATH', dirname ( __FILE__ ) );

// change the following paths if necessary
$yii=dirname(__FILE__).'/framework/yii.php';
$config=dirname(__FILE__).'/protected/config/main.php';

// remove the following lines when in production mode
defined('YII_DEBUG') or define('YII_DEBUG',false);
// specify how many levels of call stack should be shown in each log message
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL',3);

include_once dirname(__FILE__).'/protected/functions.php';
require_once($yii);
Yii::createWebApplication($config)->run();