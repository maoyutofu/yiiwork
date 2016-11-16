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
			<td class="th" colspan="10">站点信息</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($siteModel, 'name') ?></td>
			<td>
				<?php echo $form->textField($siteModel, 'name', array('maxlength'=>80,'style'=>'width:50%;')) ?>
				<?php echo $form->error($siteModel, 'name') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($siteModel, 'title') ?></td>
			<td>
				<?php echo $form->textField($siteModel, 'title', array('maxlength'=>80,'style'=>'width:50%;')) ?>
				<?php echo $form->error($siteModel, 'title') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($siteModel, 'keywords') ?></td>
			<td>
				<?php echo $form->textField($siteModel, 'keywords', array('maxlength'=>100,'style'=>'width:50%;')) ?>
				<?php echo $form->error($siteModel, 'keywords') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($siteModel, 'description') ?></td>
			<td>
				<?php echo $form->textField($siteModel, 'description', array('maxlength'=>200,'style'=>'width:50%;')) ?>
				<?php echo $form->error($siteModel, 'description') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($siteModel, 'slogan') ?></td>
			<td>
				<?php echo $form->textArea($siteModel, 'slogan', array('cols'=>60,'rows'=>4)) ?>
				<?php echo $form->error($siteModel, 'slogan') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($siteModel, 'statistical') ?></td>
			<td>
				<?php echo $form->textArea($siteModel, 'statistical', array('cols'=>60,'rows'=>4)) ?>
				<?php echo $form->error($siteModel, 'statistical') ?>
			</td>
		</tr>
		<tr>
			<td colspan="10">
				<input type="submit" class="input_button" value="更新">
			</td>
		</tr>
	</table>
	<?php $this->endWidget() ?>
</body>
</html>