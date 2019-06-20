<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>



<ul class="nav nav-tabs">
 <li role="presentation" <?php  if($type=="0") { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('tixian',array('type'=>'0'));?>">所有提现</a></li>
  <li role="presentation" <?php  if($type=="3") { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('tixian',array('type'=>'3'));?>">已处理提现</a></li>
  <li role="presentation" <?php  if($type=="2") { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('tixian',array('type'=>'2'));?>">待处理提现</a></li>
    <li role="presentation" <?php  if($type=="1") { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('tixian',array('type'=>'1'));?>">已拒绝提现</a></li>
</ul>


   <!--列表循环开始-->
   
<div class="panel panel-default">
  <div class="panel-heading">所有提现</div>
  <div class="panel-body">


<table class="table table-hover">
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/tixian', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/tixian', TEMPLATE_INCLUDEPATH));?>
<tbody>
<?php  if(is_array($tixian)) { foreach($tixian as $key => $tixian) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/tixian_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/tixian_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</tbody>
</table>
</div>
</div>
  <!--列表循环结束-->

<?php  echo $pagination;?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>