<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<div class="panel panel-default">
  <div class="panel-heading">编辑菜单</div>
  <div class="panel-body">


<form class="form-horizontal" role="form" action="" method="POST">

<!--表单开始-->
  <div class="form-group">
    <label class="col-sm-2 control-label">菜单名称</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="" name="name" value="<?php  echo $caidan['name'];?>" placeholder="请输入菜单名称">
	    </div>
  </div>
<!--表单结束-->



<!--表单开始-->
  <div class="form-group">
    <label class="col-sm-2 control-label">菜单排序</label>
    <div class="col-sm-8">
	<div class="input-group">
	<div class="input-group-addon">第</div>
      <input type="number" class="form-control" id="" name="sort" value="<?php  echo $caidan['sort'];?>" placeholder="请输入菜单排序">
	  <div class="input-group-addon">位</div>
	  </div>
	  <span class="help-block">菜单排序，数字越小越靠前</span>
	    </div>
  </div>
<!--表单结束-->


<!--表单开始-->
  <div class="form-group">
    <label class="col-sm-2 control-label">菜单链接</label>
    <div class="col-sm-8">
	<?php  echo tpl_form_field_link('link',$caidan['link']);?>
      <div class="help-block">第三方地址格式：http://www.xx.com</div>
    </div>
  </div>
<!--表单结束-->

<!--表单开始-->
  <div class="form-group">
    <label class="col-sm-2 control-label">菜单图标</label>
    <div class="col-sm-8">
	<?php  echo tpl_form_field_image('pic',$caidan['pic']);?>
      
	    </div>
  </div>
<!--表单结束-->






  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
		  <input class="btn btn-default" type="submit" name="submit" value="提 交">

    </div>
  </div>






<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>

</form>

</div>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>