<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
  <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab">系统收益</a></li>

  <!--
  <li role="presentation"><a href="#profile" role="tab" data-toggle="tab">Profile</a></li>
  <li role="presentation"><a href="#messages" role="tab" data-toggle="tab">Messages</a></li>
  <li role="presentation"><a href="#settings" role="tab" data-toggle="tab">Settings</a></li>
  -->
</ul>

<!-- Tab panes -->
<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="home">

   <!--列表循环开始-->
   
<div class="panel panel-default">
  <div class="panel-heading">系统收益</div>
  <div class="panel-body">


<table class="table table-hover">
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/system', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/system', TEMPLATE_INCLUDEPATH));?>
<tbody>
<?php  if(is_array($system)) { foreach($system as $key => $system) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/system_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/system_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</tbody>
</table><?php  echo $pagination;?>
</div>
</div>
  <!--列表循环结束-->

  </div>

  <!--
  <div role="tabpanel" class="tab-pane" id="profile">...</div>
  <div role="tabpanel" class="tab-pane" id="messages">...</div>
  <div role="tabpanel" class="tab-pane" id="settings">...</div>
  -->
</div>


<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>