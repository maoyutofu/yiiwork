<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title><?php echo $code; ?> - 这是一个美丽的错误 - 沁痕博客</title>
		<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/index/css/normalize.css">
		<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/index/js/dist/css/bootstrap.min.css">
		<style type="text/css">
			body{
				background-color: #eee;
			}
			img{
				border-radius: 3px;
				box-shadow: 0px 0px 8px #c8c7c7;
			}
			.jumbotron{
				padding-bottom: 0;
			}
		</style>
	</head>
	<body>
		<div id="header" class="jumbotron">
			<div class="container">
				<p align="center">
					<img src="<?php echo Yii::app()->request->baseUrl?>/assets/index/images/404.jpg">
				</p>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<p align="center">
						<b id="wait">5</b>秒后跳转到<a id="href" href="<?php echo $this->createUrl('/index') ?>">首页</a>
					</p>
					<p  align="center">
						<small><?php echo CHtml::encode($message); ?></small>
					</p>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			(function(){
			var wait = document.getElementById('wait'),href = document.getElementById('href').href;
			var interval = setInterval(function(){
				var time = --wait.innerHTML;
				if(time <= 0) {
					location.href = href;
					clearInterval(interval);
				};
			}, 1000);
			})();
		</script>
	</body>
</html>