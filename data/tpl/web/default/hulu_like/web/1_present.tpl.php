<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>





 <!--列表循环开始-->
   
<div class="panel panel-default">
  <div class="panel-heading">礼物获赠记录</div>
  <div class="panel-body">

<table class="table table-hover">
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/present', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/present', TEMPLATE_INCLUDEPATH));?>
<tbody>
<?php  if(is_array($present)) { foreach($present as $key => $present) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/present_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/present_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</tbody>
</table><?php  echo $pagination;?>

</div>
</div>
  <!--列表循环结束-->





  <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>
  