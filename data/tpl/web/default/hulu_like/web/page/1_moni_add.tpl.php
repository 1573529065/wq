<?php defined('IN_IA') or exit('Access Denied');?><form class="form-horizontal" role="form" action="<?php  echo $this->createWebUrl('moni_add');?>" method="POST">
   
<div class="panel panel-default">
  <div class="panel-heading">生成模拟会员</div>
  <div class="panel-body">

<!--表单开始-->



<!--表单开始-->
 <div class="form-group">
    <label class="col-sm-2 control-label">生成数量</label>
    <div class="col-sm-8">
			  <div class="input-group">
      <input type="number" name="sham_num" class="form-control" id="" placeholder="生成模拟会员数量">
	   <div class="input-group-addon">位</div>
	  </div>
	  <span class="help-block">生成模拟会员数量</span>

    </div>
  </div>
<!--表单结束-->


<!--表单开始-->
 <div class="form-group">
    <label class="col-sm-2 control-label">性别</label>
    <div class="col-sm-8">
		  <label class="radio-inline">
  <input type="radio" name="sham_sex" id="" value="1" checked="checked">男</label>
<label class="radio-inline">
  <input type="radio" name="sham_sex" id="" value="2">女</label>
	  <span class="help-block">性别</span>
    </div>
  </div>
<!--表单结束-->


<!--表单开始-->
 <div class="form-group">
    <label class="col-sm-2 control-label">年龄</label>
    <div class="col-sm-8">
			  <div class="input-group">
      <input type="number" name="sham_age_small" class="form-control" id="" placeholder="生成模拟会员最小年龄">
	   <div class="input-group-addon">至</div>
	     <input type="number" name="sham_age_big" class="form-control" id="" placeholder="生成模拟会员最大年龄">

	  </div>
	  <span class="help-block">生成模拟会员年龄</span>

    </div>
  </div>
<!--表单结束-->

<!--表单开始-->
 <div class="form-group">
    <label class="col-sm-2 control-label">身高</label>
    <div class="col-sm-8">
			  <div class="input-group">
      <input type="number" name="sham_height_small" class="form-control" id="" placeholder="生成模拟会员最矮身高">
	   <div class="input-group-addon">至</div>
	     <input type="number" name="sham_height_big" class="form-control" id="" placeholder="生成模拟会员最高身高">

	  </div>
	  <span class="help-block">生成模拟会员身高</span>

    </div>
  </div>
<!--表单结束-->

<!--表单开始-->
 <div class="form-group">
    <label class="col-sm-2 control-label">体重</label>
    <div class="col-sm-8">
			  <div class="input-group">
      <input type="number" name="sham_weight_small" class="form-control" id="" placeholder="生成模拟会员最轻体重">
	   <div class="input-group-addon">至</div>
	     <input type="number" name="sham_weight_big" class="form-control" id="" placeholder="生成模拟会员最重体重">

	  </div>
	  <span class="help-block">生成模拟会员体重</span>

    </div>
  </div>
<!--表单结束-->



  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
		  <input class="btn btn-default" type="submit" name="submit" value="提 交">

    </div>
  </div>





</div>
</div>

  <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>
