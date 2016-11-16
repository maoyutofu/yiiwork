<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/css/public.css">
	<title>Document</title>
</head>
<body>
	<?php $form = $this->beginWidget('CActiveForm',array(
		'enableClientValidation' => true,
		'clientOptions' => array(
			'validateOnsubmit' => true
			),
	)) ?>
	<?php
		if(Yii::app()->user->hasFlash('success'))
		{
			echo Yii::app()->user->getFlash('success');
		}
	?>
	<table class="table">
		<tr>
			<td class="th" colspan="10">修改密码</td>
		</tr>
		<tr>
			<td>用户名</td>
			<td><?php echo Yii::app()->user->name ?></td>
		</tr>
		<tr>
			<?php /*使用labelEx 在必填选项时会出现 * 符号，而label不会有*/ ?>
			<td><?php echo $form->labelEx($userModel,'password') ?></td>
			<td>
				<?php echo $form->passwordField($userModel, 'password') ?>
				<?php echo $form->error($userModel, 'password') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($userModel,'password1') ?></td>
			<td>
				<?php echo $form->passwordField($userModel, 'password1') ?>
				<?php echo $form->error($userModel, 'password1') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($userModel,'password2') ?></td>
			<td>
				<?php echo $form->passwordField($userModel, 'password2') ?>
				<?php echo $form->error($userModel, 'password2') ?>
			</td>
		</tr>
		<tr>
			<td colspan="10">
				<input type="submit" class="input_button" value="修改">
			</td>
		</tr>
	</table>
	<?php $this->endWidget() ?>
</body>
</html>