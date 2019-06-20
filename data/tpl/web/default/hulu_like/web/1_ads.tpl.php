<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<script language="JavaScript" src="<?php echo MODULE_URL;?>template/web/js.js"></script>

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
  <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab">广告管理</a></li>
  <li role="presentation"><a href="#profile" role="tab" data-toggle="tab">添加广告</a></li>
  <!--
  <li role="presentation"><a href="#messages" role="tab" data-toggle="tab">Messages</a></li>
  <li role="presentation"><a href="#settings" role="tab" data-toggle="tab">Settings</a></li>
  -->
</ul>

<!-- Tab panes -->
<div class="tab-content">

  <div role="tabpanel" class="tab-pane active" id="home">
     <!--列表循环开始-->
   
<div class="panel panel-default">
  <div class="panel-heading">广告管理</div>
  <div class="panel-body">
<table class="table table-hover">
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/ads', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/ads', TEMPLATE_INCLUDEPATH));?>
<tbody>
<?php  if(is_array($ads)) { foreach($ads as $key => $ads) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/ads_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/ads_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</tbody>
</table>
</div>
</div>
  <!--列表循环结束-->
  </div>

  <div role="tabpanel" class="tab-pane" id="profile"><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/ads_add', TEMPLATE_INCLUDEPATH)) : (include template('web/page/ads_add', TEMPLATE_INCLUDEPATH));?></div>

  <!--
  <div role="tabpanel" class="tab-pane" id="messages">...</div>
  <div role="tabpanel" class="tab-pane" id="settings">...</div>
  -->
</div>



<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>