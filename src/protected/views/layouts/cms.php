<?php Yii::app()->clientScript->registerCoreScript('jquery'); ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <?php if($this->beginCache('site_'.$this->tid.'_'.$this->cid.'_'.$this->aid,array('duration'=>3600))): ?>
    <title><?php echo CHtml::encode($this->pageTitle) ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php if(!empty($this->pageKeywords)) {?>
    <meta name="Keywords" content="<?php echo $this->pageKeywords ?>">
    <?php } ?>
    <?php if(!empty($this->pageDescription)) {?>
    <meta name="description" content="<?php echo $this->pageDescription ?>">
    <?php } ?>
    <?php $this->endCache();endif;?>
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/index/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/index/js/dist/css/bootstrap.min.css">
    <!--
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/index/js/dist/css/bootstrap-theme.min.css">
    -->
    <link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/index/css/style.css">
    <!--[if lt IE 9]>
          <script src="<?php echo Yii::app()->request->baseUrl ?>/assets/index/js/html5shiv.min.js"></script>
          <script src="<?php echo Yii::app()->request->baseUrl ?>/assets/index/js/respond.min.js"></script>
      <![endif]-->
  </head>
  <body>
    <header id="header">
      <nav class="navbar navbar-default" role="navigation">
        <div class="container navbar-info">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="<?php echo $this->createUrl('/index') ?>">
            <?php if($this->beginCache('site_name', array('duration'=>3600))): ?>
            <?php echo CHtml::encode($this->site) ?>
            <?php $this->endCache();endif; ?>
            </a>
          </div>

          <div class="collapse navbar-collapse" id="bs-navbar-collapse-1">
            <div class="navbar-right">
              <form action="http://www.baidu.com/baidu" target="_blank" class="navbar-form" role="search">
                <div class="form-group">
                  <input name="tn" type="hidden" value="baidu">
                  <input type="text" name="word" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
              </form>
            </div>
          </div>
        </div>
      </nav>
    </header>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="desc-info">
            <?php if($this->beginCache('sogan', array('duration'=>3600))): ?>
            <?php echo $this->slogan ?>
            <?php $this->endCache();endif; ?>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-list">
              <ul class="box-nav">
                <li><a href="<?php echo $this->createUrl('/index') ?>"><span class="home-span glyphicon glyphicon-home"></span></a></li>
                  <?php /*判断缓存 duration 为秒 缓存在runtime中*/ ?>
                  <?php  if($this->beginCache('category_'.$this->tid.'_'.$this->cid.'_'.$this->aid, array('duration'=>3600))): ?>
                  <?php
                    $artModel = Article::model();
                    $common = $artModel->common();
                  ?>
                  <?php foreach($common['nav'] as $v): ?>
                  <?php
                    $activeClass = '';
                    if($this->cid == $v->cid){
                      $activeClass = 'active';
                    }
                  ?>
                  <li><span class="cat  <?php echo $activeClass ?>"><a href="<?php echo $this->createUrl('category/index', array('cid'=>$v->cid)) ?>"><?php echo $v->cname ?></a></span></li>
                  <?php endforeach ?>
                  <?php  $this->endCache();endif; ?>
              </ul>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </div>

      <?php echo $content ?>

      <?php /*
      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <h5 class="box-title">友情链接</h5>
            <div class="box-list">
              <ul class="box-nav">
              </ul>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </div>
      */?>

    </div>

    <footer id="footer">
      <div class="copyright">
      <?php if($this->beginCache('copyright', array('duration'=>3600))): ?>
        <?php echo CHtml::encode($this->site) ?> 版权所有 <?php echo $this->statistical?>
        <?php $this->endCache();endif; ?>
      </div>
    </footer>
   <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/assets/index/js/dist/js/bootstrap.min.js"></script>
     <!-- UJian Button BEGIN -->
    <script type="text/javascript" src="http://v1.ujian.cc/code/ujian.js?type=slide&btn=3&fade=1&uid=1946762"></script>
    <?php 
    // <a href="http://www.ujian.cc" style="border:0;"><img src="http://img.ujian.cc/pixel.png" alt="友荐云推荐" style="border:0;padding:0;margin:0;" /></a>
    ?>
    <!-- UJian Button END -->
    <script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=1946762"></script>
  </body>
</html>