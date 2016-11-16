<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/css/public.css">
	<title>Document</title>
</head>
<body>
	<?php
		if(Yii::app()->user->hasFlash('hasArticle'))
		{
			echo Yii::app()->user->getFlash('hasArticle');
		}
	?>
	<table class="table">
		<tr>
			<td class="th" colspan="10">查看栏目</td>
		</tr>
		<tr>
			<td>CID</td>
			<td>栏目名称</td>
			<td>显示顺序</td>
			<td>操作</td>
		</tr>
		<?php foreach($categoryInfo as $v): ?>
			<tr>
				<td><?php echo $v->cid ?></td>
				<td><?php echo $v->cname ?></td>
				<td><?php echo $v->cno ?></td>
				<td>
					[<a href="<?php echo $this->createUrl('edit', array('cid'=>$v->cid)) ?>">编辑</a>]
					[<a href="<?php echo $this->createUrl('del', array('cid'=>$v->cid)) ?>">删除</a>]
				</td>
			</tr>
		<?php endforeach ?>
	</table>
</body>
</html>