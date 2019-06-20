<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>


<ul class="nav nav-tabs">
    <li role="presentation" <?php  if($type=="0") { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('talk',array('type'=>'0'));?>">所有说说</a></li>
    <li role="presentation" <?php  if($type=="3") { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('talk',array('type'=>'3'));?>">已显示说说</a></li>
    <li role="presentation" <?php  if($type=="2") { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('talk',array('type'=>'2'));?>">待审核说说</a></li>
    <li role="presentation" <?php  if($type=="1") { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('talk',array('type'=>'1'));?>">已屏蔽说说</a></li>
</ul>

<!--列表循环开始-->

<div class="panel panel-default">
    <div class="panel-heading">所有说说</div>
    <div class="panel-body">
        <table class="table table-hover">
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/talk', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/talk', TEMPLATE_INCLUDEPATH));?>
            <tbody>
                <?php  if(is_array($talk)) { foreach($talk as $key => $talk) { ?>
                <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/talk_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/talk_list', TEMPLATE_INCLUDEPATH));?>
                <?php  } } ?>
            </tbody>
        </table><?php  echo $pagination;?>
    </div>
</div>
<!--列表循环结束-->



<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>