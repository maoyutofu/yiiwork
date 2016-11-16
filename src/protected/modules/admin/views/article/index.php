<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl ?>/assets/admin/css/public.css">
	<title>Document</title>
</head>
<body>
	<table class="table">
		<tr>
			<td class="th" colspan="10">查看文章</td>
		</tr>

		<tr>
			<td>AID</td>
			<td>标题</td>
			<td>栏目</td>
			<td>作者</td>
			<td>类型</td>
			<td>浏览数</td>
			<td>发表时间</td>
			<td>操作</td>
		</tr>
		<?php foreach($articleInfo as $v): ?>
			<tr>
				<td><?php echo $v->aid ?></td>
				<td><a href="<?php echo $this->createUrl('/article/index', array('aid'=>$v->aid)) ?>" target="_blank"><?php echo $v->title ?></a></td>
				<td><?php echo $v['category']->cname ?></td>
				<td><?php echo $v->author ?></td>
				<td><?php echo getArticleTypeText($v->type) ?></td>
				<td><?php echo $v->view ?></td>
				<td><?php echo date('Y-m-d', $v->time) ?></td>
				<td>
					[<a href="<?php echo $this->createUrl('edit', array('aid'=>$v->aid)) ?>">编辑</a>]
					[<a href="<?php echo $this->createUrl('del', array('aid'=>$v->aid)) ?>">删除</a>]
				</td>
			</tr>
		<?php endforeach ?>
	</table>
	<div class="page">
		<?php
			$this->widget('CLinkPager', array(
				'header'=>'',
				'firstPageLabel'=>'首页',
				'lastPageLabel'=>'末页',
				'prevPageLabel'=>'上一页',
				'nextPageLabel'=>'下一页',
				'pages'=>$pages,
				'maxButtonCount'=>5,
				//'cssFile' => false
				))
		 ?>
	</div>
</body>
</html>