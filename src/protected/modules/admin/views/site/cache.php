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
			<td style="white-space: nowrap;text-align: left;font-size: 15px;color: #3B96CB;font-weight: 800;">
				您确定要清除页面缓存吗？&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="input_button" value="确定">
			</td>
		</tr>
	</table>
	<?php $this->endWidget() ?>
</body>
</html>