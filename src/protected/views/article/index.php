<?php
  $common = Site::model()->common();
  $pageTitle = $articleInfo->title . ' - ' . $articleInfo['category']->cname .' - ' . $common['site']['name'];
  $this->pageTitle = $pageTitle;
  $this->cid = $articleInfo->cid;
  $this->aid = $articleInfo->aid;

  $this->statistical = $common['site']['statistical'];
  $this->slogan = $common['site']['slogan'];
  $this->site = $common['site']['name'];
?>
<div class="row content">
    <div class="col-md-12">
            <div class="article are-border">
                <div class="title">
                    <h2><a href="<?php echo $this->createUrl('index', array('aid'=>$articleInfo->aid)) ?>"><?php echo CHtml::encode($articleInfo->title) ?></a></h2>
                    <p>
                      <small>
                        <span>作者：<?php echo $articleInfo->author ?>&nbsp;</span>
                        <span>最后编辑时间：<?php echo date('Y年m月d日 h:m:s', $articleInfo->time) ?>&nbsp;</span>
                        <span><?php echo $articleInfo->view ?>人已阅读&nbsp;</span>
                        <span>所属栏目：<a href="<?php echo $this->createUrl('category/index', array('cid'=>$articleInfo->cid)) ?>"><?php echo $articleInfo['category']->cname ?></a>&nbsp;</span>
                      </small>
                      </script>
                    </p>
                </div>
                <div class="summary">
                     <p>
                      <?php if($this->beginCache('article_'.$articleInfo->cid.'_'.$articleInfo->aid,array('duration'=>3600))): ?>
                        <?php echo syntaxHighlighter($articleInfo->content) ?>
                      <?php $this->endCache();endif; ?>
                     </p>
                </div>
                <?php if($this->beginCache('statement_'.$articleInfo->cid.'_'.$articleInfo->aid, array('duration'=>3600))): ?>
                <div class="statement">
                  <ul>
                    <?php if($articleInfo->type == 0): ?>
                    <li>本博客文章除注明转载外，均为原创或网友投稿</li>
                    <li>转载请注明：文章转载自：<strong><?php echo $this->site ?></strong> [<a href="<?php echo Yii::app()->request->hostInfo . Yii::app()->request->baseUrl ?>"><?php echo Yii::app()->request->hostInfo . Yii::app()->request->baseUrl ?>]</a></li>
                    <li>本文标题：<?php echo $articleInfo->title ?></li>
                    <li>本文地址：<a href="<?php echo Yii::app()->request->hostInfo . $this->createUrl('article/index',array('aid'=>$articleInfo->aid)) ?>"><?php echo Yii::app()->request->hostInfo . $this->createUrl('article/index',array('aid'=>$articleInfo->aid)) ?></a></li>
                    <?php endif;?>
                    <?php if($articleInfo->type == 1): ?>
                    <li>本文转载自：<?php echo $articleInfo->author?></li>
                    <?php endif;?>
                  </ul>
               </div>
               <?php $this->endCache();endif;?>
                <!-- JiaThis Button BEGIN -->
                <div class="jiathis_style pull-right">
                <a href="http://www.jiathis.com/share?uid=1946762" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank">分享到：</a>
                  <!-- 
                  <span class="jiathis_txt">分享到：</span>
                  -->
                  <a class="jiathis_button_tools_1"></a>
                  <a class="jiathis_button_tools_2"></a>
                  <a class="jiathis_button_tools_3"></a>
                  <a class="jiathis_button_tools_4"></a>
                  <!-- 
                  <a class="jiathis_counter_style"></a>
                  -->
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
</div>

<div class="row content" id="comment">
  <div class="col-md-12">
    <div class="info">
      <!-- UY BEGIN -->
      <div id="uyan_frame"></div>
      <!-- UY END -->
      <?php /*
      <?php $form = $this->beginWidget('CActiveForm', array('action'=>CHtml::normalizeUrl(array('comment/index')),'htmlOptions'=>array('role'=>'form'),
         'enableClientValidation' => true,
'clientOptions' => array(
'validateOnSubmit' => true
)))?>
        <?php echo $form->hiddenField($commentModel,'aid', array('value'=>$articleInfo->aid));?>  
        <div class="form-group">
          <label for="nickname" class="control-label"><?php echo $form->labelEx($commentModel, 'nickname') ?></label
          >
          <?php echo $form->textField($commentModel, 'nickname', array('class'=>'form-control','maxlength'=>50)) ?>
          <?php echo $form->error($commentModel, 'nickname') ?>
        </div>
        <div class="form-group">
          <label for="email" class="control-label"><?php echo $form->labelEx($commentModel, 'email') ?></label
          > <span class="tip-micro">推荐使用QQ邮箱方便联系</span>
          <?php echo $form->textField($commentModel, 'email', array('class'=>'form-control','maxlength'=>150)) ?>
          <?php echo $form->error($commentModel, 'email') ?>
        </div>
        <div class="form-group">
          <label for="content" class="control-label"><?php echo $form->labelEx($commentModel, 'content') ?></label>
           <?php echo $form->textArea($commentModel, 'content', array('class'=>'form-control', 'rows'=>4)) ?>
           <?php echo $form->error($commentModel, 'content') ?>
        </div>
        <button type="submit" class="btn btn-default">点击发送</button>
      <?php $this->endWidget() ?>
      */ ?>
    </div>
  </div>
</div>
<!-- 代码语法高亮 begin -->
  <link type="text/css" rel="stylesheet" href="/assets/index/org/syntaxhighlighter_3.0.83/styles/shCoreDefault.css"/>
  <script type="text/javascript" src="/assets/index/org/syntaxhighlighter_3.0.83/scripts/shCore.js"></script>
  <script type="text/javascript" src="/assets/index/org/syntaxhighlighter_3.0.83/scripts/shBrushJava.js"></script>
  <script type="text/javascript" src="/assets/index/org/syntaxhighlighter_3.0.83/scripts/shBrushCpp.js"></script>
  <script type="text/javascript" src="/assets/index/org/syntaxhighlighter_3.0.83/scripts/shBrushJScript.js"></script>
  <script type="text/javascript" src="/assets/index/org/syntaxhighlighter_3.0.83/scripts/shBrushPhp.js"></script>
  <script type="text/javascript" src="/assets/index/org/syntaxhighlighter_3.0.83/scripts/shBrushSql.js"></script>
  <script type="text/javascript" src="/assets/index/org/syntaxhighlighter_3.0.83/scripts/shBrushXml.js"></script>
  
  <script type="text/javascript">SyntaxHighlighter.all();</script>
<!-- 代码语法高亮 end -->
<?php
/*
<?php 
      $lastVal = end($commentInfo);
?>
<?php if(!empty($commentInfo)){ ?>
<div class="row content">
  <div class="col-md-12">
    <div class="info">
    
      <?php foreach ($commentInfo as $v): ?>
          <dl>
            <dd class="comment-content"><?php echo CHtml::encode($v->content) ?></dd>
            <dd class="comment-info"><span><?php echo CHtml::encode($v->nickname) ?></span><span><?php echo date('Y-m-d H:i:s', $v->time) ?></span></dd>
          </dl>
          <?php 
            if($lastVal != $v) {
               echo '<div class="divider"></div>';
            }
          ?>
      <?php endforeach ?>
    </div>
  </div>
</div>
<?php } ?>
*/ ?>
  <script type="text/javascript">
  var jiathis_config = {data_track_clickback:'true'};
  </script>
  <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js?uid=1946762" charset="utf-8"></script>
  <!-- JiaThis Button END -->