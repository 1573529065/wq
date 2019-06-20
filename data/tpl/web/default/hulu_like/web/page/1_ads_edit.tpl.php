<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
   
<div class="panel panel-default">
  <div class="panel-heading">编辑广告</div>
  <div class="panel-body">

<!--表单开始-->

<form class="form-horizontal" role="form" action="" method="POST">



 <div class="form-group">
    <label class="col-sm-2 control-label">广告名称</label>
    <div class="col-sm-8">
		
      <input type="text" name="ads_title" value="<?php  echo $ads['ads_title'];?>" class="form-control" id="" placeholder="广告名称">
	  
	  <span class="help-block">广告名称</span>

    </div>
  </div>


 <div class="form-group">
    <label class="col-sm-2 control-label">广告状态</label>
    <div class="col-sm-8">
		  
<!---->
<label class="radio-inline">
  <input type="radio" name="ads_pid" id="" value="1" <?php  if($ads['ads_pid']=='1') { ?>checked="checked"<?php  } else { ?><?php  } ?>>显示</label>
<label class="radio-inline">
  <input type="radio" name="ads_pid" id="" value="2" <?php  if($ads['ads_pid']=='2') { ?>checked="checked"<?php  } else { ?><?php  } ?>>隐藏</label>
<!---->
	  
	  <span class="help-block">广告状态</span>

    </div>
  </div>


 <div class="form-group">
    <label class="col-sm-2 control-label">广告排序</label>
    <div class="col-sm-8">
 <input type="number" name="ads_did" value="<?php  echo $ads['ads_did'];?>" class="form-control" id="" placeholder="广告排序">
	  
	  <span class="help-block">广告排序</span>

    </div>
  </div>


 <div class="form-group">
    <label class="col-sm-2 control-label">广告链接</label>
    <div class="col-sm-8">
		
		 <?php  echo tpl_form_field_link('ads_link',$ads['ads_link']);?>
	   
	  <span class="help-block">广告链接</span>

    </div>
  </div>

 
 <div class="form-group">
    <label class="col-sm-2 control-label">广告图片</label>
    <div class="col-sm-8">
		 
<?php  echo tpl_form_field_image('ads_pic',$ads['ads_pic']);?>	   
	  <span class="help-block">广告图片</span>

    </div>
  </div>










 


  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
	  <input class="btn btn-default" type="submit" name="submit" value="提 交">
    </div>
  </div>

  <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>


<!--表单结束-->

</div>
</div>
  <!--列表循环结束-->

  <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>