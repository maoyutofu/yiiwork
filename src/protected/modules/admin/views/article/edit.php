<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/css/public.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/org/font-awesome/4.2.0/css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/org/simditor/styles/simditor.css">
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/org/jquery/1.11.2/jquery.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/org/simditor/scripts/module.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/org/simditor/scripts/uploader.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/org/simditor/scripts/hotkeys.min.js"></script>
	<script type="text/javascript" src="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/org/simditor/scripts/simditor.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			var editor = new Simditor({
			     textarea: $('#content'),
			     defaultImage: '/assets/admin/org/simditor/images/image.png'
			   });
		});
	</script>
	<title>Document</title>
</head>
<body>
	<?php
		$form = $this->beginWidget('CActiveForm', array(
			'htmlOptions'=>array('enctype'=>'multipart/form-data'),
			));
	?>
	<table class="table">
		<tr >
			<td class="th" colspan="10">修改文章</td>
		</tr>
		<tr>
			<td style="width: 6%;"><?php echo $form->labelEx($articleModel, 'title') ?></td>
			<td>
				<?php echo $form->textField($articleModel, 'title', array('maxlength'=>50,'style'=>'width:30%;')) ?>
				<?php echo $form->error($articleModel, 'title') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($articleModel, 'type') ?></td>
			<td>
				<?php
					echo $form->radioButtonList(
						$articleModel,
						'type',
						array(0=>'原创',1=>'转载'),
						// 分隔符，默认为<br>
						array('separator'=>'&nbsp;')
						)
				?>
				<?php echo $form->error($articleModel, 'type') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($articleModel, 'author') ?></td>
			<td>
				<?php
					echo $form->textField($articleModel,'author', array('maxlength'=>50,'style'=>'width:30%;'))
				?>
				<?php echo $form->error($articleModel, 'author') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($articleModel, 'cid') ?></td>
			<td>
				<?php
					echo $form->dropDownList(
						$articleModel,
						/*value*/
						'cid',
						/*后台传递的数组*/
						$categoryArray
						)
				?>
				<?php echo $form->error($articleModel, 'cid') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($articleModel, 'content') ?></td>
			<td>
				<?php echo $form->textArea($articleModel, 'content', array('id'=>'content')) ?>
				<?php echo $form->error($articleModel, 'content') ?>
			</td>
		</tr>
		<tr>
			<td><?php echo $form->labelEx($articleModel, 'label') ?></td>
			<td>
				<?php echo $form->textField($articleModel, 'label', array('maxlength'=>38,'style'=>'width:30%;')) ?> (标签之间用 , 隔开，最大允许3个标签，每个标签不超过4个汉字)
				<?php echo $form->error($articleModel, 'label') ?>
			</td>
		</tr>
		<tr>
			<td colspan="10"><input type="submit" class="input_button" value="发布"/></td>
		</tr>
	</table>
	<?php $this->endWidget() ?>
</body>
</html>