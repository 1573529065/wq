<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
    <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/web/public.css">

<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
  <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab">基本信息</a></li>
  <li role="presentation"><a href="#profile" role="tab" data-toggle="tab">详情信息</a></li>
  <li role="presentation"><a href="#messages" role="tab" data-toggle="tab">择偶要求</a></li>
  <li role="presentation"><a href="#settings" role="tab" data-toggle="tab">更多信息</a></li>
    <li role="presentation"><a href="#one" role="tab" data-toggle="tab">会员照片</a></li>
	  <li role="presentation"><a href="#two" role="tab" data-toggle="tab">会员订单</a></li>
  <li role="presentation"><a href="#three" role="tab" data-toggle="tab">会员查看联系方式</a></li>
  <!--
  <li role="presentation"><a href="#four" role="tab" data-toggle="tab">更多信息</a></li>
  <li role="presentation"><a href="#five" role="tab" data-toggle="tab">更多信息</a></li>
  <li role="presentation"><a href="#six" role="tab" data-toggle="tab">更多信息</a></li>
  <li role="presentation"><a href="#seven" role="tab" data-toggle="tab">更多信息</a></li>
-->

</ul>

<!-- Tab panes -->
<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="home">

  <!--列表循环开始-->
  <div class="panel panel-default">
  <div class="panel-heading">基本信息</div>
  <div class="panel-body">
  <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/user_view_1', TEMPLATE_INCLUDEPATH)) : (include template('web/page/user_view_1', TEMPLATE_INCLUDEPATH));?>
  </div>
  </div>
  <!--列表循环结束-->

  </div>
  <div role="tabpanel" class="tab-pane" id="profile">

   <!--列表循环开始-->
  <div class="panel panel-default">
  <div class="panel-heading">详细信息</div>
  <div class="panel-body">
  <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/user_view_2', TEMPLATE_INCLUDEPATH)) : (include template('web/page/user_view_2', TEMPLATE_INCLUDEPATH));?>
  </div>
  </div>
  <!--列表循环结束-->

  </div>
  <div role="tabpanel" class="tab-pane" id="messages">

   <!--列表循环开始-->
  <div class="panel panel-default">
  <div class="panel-heading">择偶要求</div>
  <div class="panel-body">
  <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/user_view_3', TEMPLATE_INCLUDEPATH)) : (include template('web/page/user_view_3', TEMPLATE_INCLUDEPATH));?>
  </div>
   </div>
  <!--列表循环结束-->

  </div>

  <div role="tabpanel" class="tab-pane" id="settings">
    <!--列表循环开始-->
  <div class="panel panel-default">
  <div class="panel-heading">更多信息</div>
  <div class="panel-body">
  <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/user_view_4', TEMPLATE_INCLUDEPATH)) : (include template('web/page/user_view_4', TEMPLATE_INCLUDEPATH));?>
  </div>
   </div>
  <!--列表循环结束-->
  </div>

    <div role="tabpanel" class="tab-pane" id="one">
	  <!--列表循环开始-->
  <div class="panel panel-default">
  <div class="panel-heading">会员照片</div>
  <div class="panel-body">

  <?php  if(is_array($picture)) { foreach($picture as $key => $picture) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/picture_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/picture_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>

  </div>
   </div>
  <!--列表循环结束-->
	</div>

  <div role="tabpanel" class="tab-pane" id="two">
    <!--列表循环开始-->
  <!--列表循环开始-->
   
<div class="panel panel-default">
  <div class="panel-heading">所有订单</div>
  <div class="panel-body">


<table class="table table-hover">
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/order', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/order', TEMPLATE_INCLUDEPATH));?>
<tbody>
<?php  if(is_array($order)) { foreach($order as $key => $order) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/order_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/order_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</tbody>
</table>
</div>
</div>
  <!--列表循环结束-->
  <!--列表循环结束-->
  </div>

  <div role="tabpanel" class="tab-pane" id="three">
    <!--列表循环开始-->
   <!--列表循环开始-->
   
<div class="panel panel-default">
  <div class="panel-heading">所有查看联系方式</div>
  <div class="panel-body">

 

<table class="table table-hover">
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/contact', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/contact', TEMPLATE_INCLUDEPATH));?>
<tbody>
<?php  if(is_array($contact)) { foreach($contact as $key => $contact) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/contact_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/contact_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</tbody>
</table>
</div>
</div>
  <!--列表循环结束-->
  <!--列表循环结束-->
  </div>

  <!--
  <div role="tabpanel" class="tab-pane" id="four">...</div>
  <div role="tabpanel" class="tab-pane" id="five">...</div>
  <div role="tabpanel" class="tab-pane" id="six">...</div>
  <div role="tabpanel" class="tab-pane" id="seven">...</div>
-->

</div>


<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>