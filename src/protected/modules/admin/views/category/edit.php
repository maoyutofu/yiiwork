<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/css/public.css">
	<title>Document</title>
	<style type="text/css">
		span{
			color: #f00;
		}
	</style>
</head>
<body>
	<?php $form = $this->beginWidget('CActiveForm', array(
		'enableClientValidation' => true,
		'clientOptions' => array(
			'validateOnSubmit' => true
			),
	)) ?>
	<table class="table">
		<tr>
			<td class="th" colspan="10">修改栏目</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($categoryModel, 'cname') ?></td>
			<td>
				<?php echo $form->textField($categoryModel, 'cname', array('maxlength'=>15,'style'=>'width:30%;')) ?>
				<?php echo $form->error($categoryModel, 'cname') ?>
			</td>
		</tr>
			<td><?php echo $form->labelEx($categoryModel, 'cno') ?></td>
			<td>
				<?php echo $form->textField($categoryModel, 'cno', array('maxlength'=>10,'style'=>'width:30%;')) ?>
				<?php echo $form->error($categoryModel, 'cno') ?>
			</td>
		</tr>
		<tr>
			<td colspan="10"><input type="submit" value="修改" class="input_button"/></td>
		</tr>
	</table>
	<?php $this->endWidget() ?>
</body>
</html>