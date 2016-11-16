<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/css/public.css">
	<title>Document</title>
</head>
<body>
	<?php $form = $this->beginWidget('CActiveForm') ?>
	<?php
		if(Yii::app()->user->hasFlash('success'))
		{
			echo Yii::app()->user->getFlash('success');
		}
	?>
	<table class="table">
		<tr>
			<td>有效值为：always、hourly、daily、<b style="color:red;">weekly</b>、monthly、yearly、never</td>
			<td style="white-space: nowrap;text-align: left;font-size: 15px;color: #3B96CB;font-weight: 800;">
				查询本周发布的所有文章来生成sitemap.xml&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="input_button" value="生成">
			</td>
		</tr>
	</table>
	<?php $this->endWidget() ?>
</body>
</html>