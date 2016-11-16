<?php
  $common = Site::model()->common();
  $pageTitle = $common['site']['name'];
  if(!empty($common['site']['title'])){
    $pageTitle .= ' - '.$common['site']['title'];
  }
  $this->pageTitle = $pageTitle;
  /*
  $this->pageKeywords = $common['site']['keywords'];
  */
  $this->pageDescription = $common['site']['description'];

  $this->statistical = $common['site']['statistical'];
  $this->slogan = $common['site']['slogan'];
  $this->site = $common['site']['name'];
?>
<div class="row content">
  <div class="col-md-9">
    <div class="info">
    <?php 
      $lastVal = end($articleNew);
    ?>
    <?php foreach ($articleNew as $v): ?>
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

    <div class="info-pager">
        <?php 
            $this->widget('CLinkPager',array(
                'header'=>'',
                'pages'=>$pages,
                'maxButtonCount'=>0,
                'cssFile' => false,
                'htmlOptions'=>array('class'=>'pager'),
                'selectedPageCssClass' => 'active',
                'hiddenPageCssClass' => 'disabled',
              ))
        ?>
      </div>
      
  </div>

  <div class="col-md-3">
    <div class="weather">
      <!--
      <img src="<?php echo Yii::app()->request->baseUrl?>/assets/index/images/weather.jpg">
      -->
      <script type="text/javascript" src="http://ext.weather.com.cn/81671.js"></script>
    </div>

    <div class="box">
      <h5 class="box-title">最新标签</h5>
      <div class="sidebar-list">
      <?php if($this->beginCache('tag', array('duration'=>3600))):?>
        <p>
          <?php
            $tagList = Tag::model()->common();
          ?>
          <?php foreach($tagList as $v):?>
            <label><a href="<?php echo $this->createUrl('tag/index', array('tid'=>$v->tid))?>"><?php echo $v->name ?></a></label>
          <?php endforeach ?>
        </p>
        <?php $this->endCache();endif;?>
        <div class="clearfix"></div>
      </div>
    </div>

    <div class="box">
      <h5 class="box-title">热门文章</h5>
      <div class="sidebar-list">
        <?php if($this->beginCache('hot_article', array('duration'=>3600))):?>
        <ul>
        <?php 
          $hots = Article::model()->hot();
        ?>
        <?php foreach ($hots as $v):?>
          <li><a href="<?php echo $this->createUrl('article/index', array('aid'=>$v->aid)) ?>" target="_blank"><?php echo CHtml::encode($v->title) ?></a></li>
          <?php endforeach ?>
        </ul>
        <?php $this->endCache();endif;?>
        <div class="clearfix"></div>
      </div>
    </div>
    <div class="box">
      <h5 class="box-title">友情链接</h5>
      <div class="sidebar-link">
        <?php if($this->beginCache('flink', array('duration'=>3600))): ?>
        <ul>
        <?php 
          $common = Link::model()->common();
        ?>
         <?php foreach ($common['link'] as $v):?>
              <li><a href="<?php echo $v->href ?>" target="_blank" rel="nofollow"><?php echo $v->name ?></a></li>
         <?php endforeach ?>
        </ul>
        <?php $this->endCache();endif;?>
        <div class="clearfix"></div>
      </div>
    </div>

</div>

</div>