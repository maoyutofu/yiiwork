<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>欢迎使用</title>
	<link href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="layout">
  <div id="mainlogin">
    <div class="mainlist">
      <?php $form = $this->beginWidget('CActiveForm') ?>
        <ul>
          <li>
            <label class="name" id="login_user_txt" >用户名：</label>
            <div class="inputbg">
              <?php echo $form->textField($loginForm, 'username', array('id'=>'username')); ?>
              <?php echo $form->error($loginForm, 'username'); ?>
            </div>
          <li>
            <label class="name" >密码：</label>
            <div class="inputpwd">
            <?php echo $form->passwordField($loginForm, 'password', array('id'=>'password')); ?>
            <?php echo $form->error($loginForm, 'password'); ?>
            </div>
          <li>
            <label class="name" >验证码:</label>
            <div class="inputyzm">
              <?php echo $form->textField($loginForm, 'captcha', array('id'=>'captcha','class'=>'yzm')); ?>
              <?php echo $form->error($loginForm, 'captcha'); ?>
            </div>
            <?php $this->widget('CCaptcha',array('showRefreshButton'=>false,'clickableImage'=>true,'imageOptions'=>array('alt'=>'点击刷新','title'=>'点击刷新','style'=>'cursor:pointer; position:absolute; left:330px; '))); ?>
            </li>
        </ul>
        <div class="logbutton">
          <button type="submit" class="btn"></button>
        </div>
      <?php $this->endWidget() ?>
    </div>
  </div>
</div>
</body>
</html>