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
			'validateOnsubmit' => true
			),
	)) ?>
	<table class="table">
		<tr>
			<td class="th" colspan="10">增加友情链接</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($linkModel, 'name') ?></td>
			<td>
				<?php echo $form->textField($linkModel, 'name', array('maxlength'=>80,'style'=>'width:30%;')) ?>
				<?php echo $form->error($linkModel, 'name') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($linkModel, 'href') ?></td>
			<td>
				<?php echo $form->textField($linkModel, 'href', array('maxlength'=>255,'style'=>'width:30%;')) ?>
				<?php echo $form->error($linkModel, 'href') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($linkModel, 'no') ?></td>
			<td>
				<?php echo $form->textField($linkModel, 'no', array('maxlength'=>10,'style'=>'width:30%;')) ?>
				<?php echo $form->error($linkModel, 'no') ?>
			</td>
		</tr>
		<tr>
			<td colspan="10"><input type="submit" value="添加" class="input_button"/></td>
		</tr>
	</table>
	<?php $this->endWidget() ?>
</body>
</html>