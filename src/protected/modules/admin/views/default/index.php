<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>管理中心 - <?php echo CHtml::encode(Yii::app()->name) ?></title>
	<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/css/admin.css" />
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/js/admin.js"></script>
<!-- 默认打开目标 -->
<base target="iframe"/>
</head>
<body>
<!-- 头部 -->
	<div id="top_box">
		<div id="top">
			<p id="top_font"></p>
		</div>
		<div class="top_bar">
			<p class="adm">
				<span>管理员：</span>
				<span class="adm_pic">&nbsp&nbsp&nbsp&nbsp</span>
				<span class="adm_people">[<?php echo Yii::app()->user->name ?>]</span>
			</p>
			<p class="now_time">
				今天是：2014.7.1
				您的当前位置是：
				<span>首页</span>
			</p>
			<p class="out">
				<span class="out_bg">&nbsp&nbsp&nbsp&nbsp</span>&nbsp
				<a href="<?php echo $this->createUrl('login/out') ?>" target="_self">退出</a>
			</p>
		</div>
	</div>
<!-- 左侧菜单 -->
		<div id="left_box">
			<p class="use">功能管理</p>
			<div class="menu_box">
				<h2>文章管理</h2>
				<div class="text">
				    <ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('article/add') ?>" class="pos">发表文章</a>				        	
				        </li> 
				    </ul>
					<ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('article/index') ?>" class="pos">查看文章</a>				        	
				        </li> 
				    </ul>

				</div>
			</div>	
			<div class="menu_box">
				<h2>栏目管理</h2>
				<div class="text">
					<ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('category/index') ?>" class="pos">查看栏目</a>				        	
				        </li> 
				    </ul>
				  	<ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('category/add') ?>" class="pos">添加栏目</a>				        	
				        </li> 
				    </ul>
				</div>
			</div>	
			<div class="menu_box">
				<h2>运营管理</h2>
				<div class="text">
					<ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('link/index') ?>" class="pos">友情链接</a>				        	
				        </li> 
				    </ul>
				    <ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('link/add') ?>" class="pos">添加链接</a>				        	
				        </li> 
				    </ul>
				    <ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('site/sitemap') ?>" class="pos">sitemap</a>				        	
				        </li> 
				    </ul>
				</div>
			</div>		
			<div class="menu_box">
				<h2>常用菜单</h2>
				<div class="text">
					<ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('/') ?>" class="pos" target="_blank">前台首页</a>				        	
				        </li> 
				    </ul>
				    <!--
				  	<ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('copy') ?>" class="pos">系统信息</a>				        	
				        </li> 
				    </ul>
				    -->
				     <ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('site/index') ?>" class="pos">站点信息</a>				        	
				        </li> 
				    </ul>
				    <ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('user/passwd') ?>" class="pos">密码修改</a>				        	
				        </li> 
				    </ul>
				    <ul class="con">
				        <li class="nav_u">
				        	<a href="<?php echo $this->createUrl('site/delcache') ?>" class="pos">清除缓存</a>				        	
				        </li> 
				    </ul>
				</div>
			</div>			
		</div>
		<!-- 右侧 -->
		<div id="right">
			<iframe  frameboder="0" border="0" 	scrolling="yes" name="iframe" src="<?php echo $this->createUrl('default/copy') ?>"></iframe>
		</div>
	<!-- 底部 -->
	<div id="foot_box">
		<div class="foot">
			<p>Copyright © 2013-2014 <?php echo CHtml::encode(Yii::app()->name) ?> All Rights Reserved. Powered by <a href="https://github.com/tjz101/yiiwork" style="color:#fff;font-size:12px;">YiiWork</a></p>
		</div>
	</div>

</body>
</html>
<!--[if IE 6]>
    <script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/js/iepng.js"></script>
    <script type="text/javascript">
        DD_belatedPNG.fix('.adm_pic, #left_box .pos, .span_server, .span_people', 'background');
    </script>
<![endif]-->
