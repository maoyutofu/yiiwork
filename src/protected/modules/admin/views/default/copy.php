<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title></title>
	<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/css/admin.css" />
</head>
<body>
	<table class="table">
		<tr>
			<td colspan='2' class="th"><span class="span_people">&nbsp</span>欢迎光临管理后台</td>
		</tr>
		<tr>
			<td>用户名</td>
			<td><?php echo Yii::app()->user->name ?></td>
		</tr>
		<tr>
			<td>登录时间</td>
			<td><?php echo date('Y-m-d', Yii::app()->session['logintime']) ?></td>
		</tr>
		<tr>
			<td>客户端IP</td>
			<td><?php echo Yii::app()->request->userHostAddress ?></td>
		</tr>
		<tr>
			<td colspan='2' class="th"><span class="span_server" style="float:left">&nbsp</span>服务器信息</td>
		</tr>
		<tr>
			<td>服务器环境</td>
			<td><?php echo $_SERVER['SERVER_SOFTWARE'] ?></td>
		</tr>
		<tr>
			<td>PHP版本</td>
			<td><?php echo PHP_VERSION ?></td>
		</tr>
		<tr>
			<td>服务器IP</td>
			<td><?php echo $_SERVER['SERVER_ADDR'] ?></td>
		</tr>
		<tr>
			<td>数据库信息</td>
			<td><?php echo mysql_get_client_info() ?></td>
		</tr>
		<tr>
			<td colspan='2' class="th"><span class="span_group" style="float:left">&nbsp</span>软件信息</td>
		</tr>
		<tr>
			<td>版权所有</td>
			<td><?php echo CHtml::encode(Yii::app()->name) ?></td>
		</tr>
		<tr>
			<td>开发者</td>
			<td>lemontea 36634584@qq.com</td>
		</tr>
		<tr>
			<td>程序版本</td>
			<td>v1.0.0 Release 20140625</td>
		</tr>
</table>
</body>
</html>
