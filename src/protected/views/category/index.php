<?php
  $common = Site::model()->common();
  $pageTitle = $title .' - ' . $common['site']['name'];
  $this->pageTitle = $pageTitle;
  $this->cid = $cid;

  $this->statistical = $common['site']['statistical'];
  $this->slogan = $common['site']['slogan'];
  $this->site = $common['site']['name'];
?>
<div class="row content">
  <div class="col-md-12">
    <div class="info">
    <?php 
      $lastVal = end($articleInfo);
    ?>
    <?php foreach ($articleInfo as $v): ?>
      <div class="article">
        <div class="article-title">
           <h2 class="article-h2"><i class="article-icon"></i><a href="<?php echo $this->createURL('article/index', array('aid'=>$v->aid)) ?>"><?php echo $v->title ?></a></h2>
        </div>
        <div class="article-summary">
          <p><?php echo $v->info ?></p>
          <?php 
            if(!empty($v->thumb))
            {
              echo '<p style="overflow:hidden;text-align:center;"><img src="'.$v->thumb.'" style="max-height:210px;"></p>';
            } 
          ?>
        </div>
        <div class="article-footer">
              <span class="article-time"><i class="article-icon"></i><?php echo date('Y年m月d日 H:m:s', $v->time) ?></span> 
              <span class="article-more">
                <i class="article-icon"></i>
                <a href="<?php echo $this->createURL('article/index', array('aid'=>$v->aid)) ?>">阅读全文</a>
              </span>
              <span class="article-comment visible-lg">
                <i class="article-icon"></i>
                <a href="<?php echo $this->createURL('article/index', array('aid'=>$v->aid)) ?>#comment">评论</a>
              </span>
        </div>
      </div>
       <?php 
        if($lastVal != $v) {
           echo '<div class="divider"></div>';
        }
      ?>
      <?php endforeach ?>
    </div>
  </div>

  <div class="col-md-12">
    <div class="info-pager">
        <?php 
            $this->widget('CLinkPager',array(
                'header'=>'',
                'firstPageLabel'=>'首页',
                'lastPageLabel'=>'末页',
                'prevPageLabel'=>'上一页',
                'nextPageLabel'=>'下一页',
                'pages'=>$pages,
                'maxButtonCount'=>5,
                'cssFile' => false,
                'htmlOptions'=>array('class'=>'pagination'),
                'selectedPageCssClass' => 'active',
                'hiddenPageCssClass' => 'disabled',
              ))
        ?>
      </div>
  </div>
</div>