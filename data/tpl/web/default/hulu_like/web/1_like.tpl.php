<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>




   <!--列表循环开始-->
   
<div class="panel panel-default">
  <div class="panel-heading">管理喜欢</div>
  <div class="panel-body">


<table class="table table-hover">
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/banner/like', TEMPLATE_INCLUDEPATH)) : (include template('web/banner/like', TEMPLATE_INCLUDEPATH));?>
<tbody>
<?php  if(is_array($like)) { foreach($like as $key => $like) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/page/like_list', TEMPLATE_INCLUDEPATH)) : (include template('web/page/like_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</tbody>
</table>
</div>
</div>
  <!--列表循环结束-->

<?php  echo $pagination;?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>