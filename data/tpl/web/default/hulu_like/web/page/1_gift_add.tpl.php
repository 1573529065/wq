<?php defined('IN_IA') or exit('Access Denied');?>     <!--列表循环开始-->
   
<div class="panel panel-default">
  <div class="panel-heading">添加礼物</div>
  <div class="panel-body">

<!--表单开始-->

<form class="form-horizontal" role="form" action="" method="POST">

<!--表单开始-->
 <div class="form-group">
    <label class="col-sm-2 control-label">礼物名称</label>
    <div class="col-sm-8">
		
      <input type="text" name="gift_name" value="" class="form-control" id="" placeholder="请输入礼物名称">
	  
	  <span class="help-block">礼物名称</span>

    </div>
  </div>
<!--表单结束-->

 <div class="form-group">
    <label class="col-sm-2 control-label">礼物状态</label>
    <div class="col-sm-8">
		  
<!---->
<label class="radio-inline">
  <input type="radio" name="gift_pid" id="" value="1" checked="checked">显示</label>
<label class="radio-inline">
  <input type="radio" name="gift_pid" id="" value="2">隐藏</label>
<!---->
	  
	  <span class="help-block">礼物状态</span>

    </div>
  </div>


 <div class="form-group">
    <label class="col-sm-2 control-label">礼物排序</label>
    <div class="col-sm-8">
	  <div class="input-group">
	     <div class="input-group-addon">第</div>
 <input type="number" name="gift_did" value="" class="form-control" id="" placeholder="请输入礼物排序">
	    <div class="input-group-addon">位</div>
		</div>
	  <span class="help-block">礼物排序</span>

    </div>
  </div>


<!--表单开始-->
  <div class="form-group">
    <label class="col-sm-2 control-label">礼物价格</label>

    <div class="col-sm-8">
	  <div class="input-group">
      <input type="text" name="gift_money" value="" class="form-control" id="" placeholder="请输入礼物价格">
      <div class="input-group-addon">元</div>
	  </div>

	  <span class="help-block">礼物价格</span>

    </div>
  </div>
<!--表单结束-->


 
 <div class="form-group">
    <label class="col-sm-2 control-label">礼物图片</label>
    <div class="col-sm-8">
		 
<?php  echo tpl_form_field_image('gift_picture');?>	   
	  <span class="help-block">礼物图片</span>

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