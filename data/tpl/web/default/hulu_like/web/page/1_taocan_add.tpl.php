<?php defined('IN_IA') or exit('Access Denied');?>     <!--列表循环开始-->
   
<div class="panel panel-default">
  <div class="panel-heading">添加套餐</div>
  <div class="panel-body">

<!--表单开始-->

<form class="form-horizontal" role="form" action="" method="POST">




 <div class="form-group">
    <label class="col-sm-2 control-label">套餐状态</label>
    <div class="col-sm-8">
		  
<!---->
<label class="radio-inline">
  <input type="radio" name="taocan_pid" id="" value="1" checked="checked">显示</label>
<label class="radio-inline">
  <input type="radio" name="taocan_pid" id="" value="2">隐藏</label>
<!---->
	  
	  <span class="help-block">套餐状态</span>

    </div>
  </div>


 <div class="form-group">
    <label class="col-sm-2 control-label">套餐排序</label>
    <div class="col-sm-8">
		  <div class="input-group">
      <div class="input-group-addon">第</div>
 <input type="number" name="taocan_did" value="" class="form-control" id="" placeholder="套餐排序">
       <div class="input-group-addon">位</div>
	  </div>
	  <span class="help-block">套餐排序</span>

    </div>
  </div>





 <div class="form-group">
    <label class="col-sm-2 control-label">聊天金币</label>
    <div class="col-sm-8">
		  <div class="input-group">
 <input type="number" name="taocan_liaotian_jinbi" value="" class="form-control" id="" placeholder="聊天金币">
       <div class="input-group-addon">币</div>
	  </div>
	  <span class="help-block">聊天金币</span>

    </div>
  </div>



   <div class="form-group">
    <label class="col-sm-2 control-label">聊天人数</label>
    <div class="col-sm-8">
		  <div class="input-group">
 <input type="number" name="taocan_liaotian_person" value="" class="form-control" id="" placeholder="聊天人数">
       <div class="input-group-addon">人</div>
	  </div>
	  <span class="help-block">聊天人数</span>

    </div>
  </div>




 





 <div class="form-group">
    <label class="col-sm-2 control-label">聊天时间</label>
    <div class="col-sm-8">
		  <div class="input-group">
 <input type="number" name="taocan_liaotian_time" value="" class="form-control" id="" placeholder="聊天时间">
       <div class="input-group-addon">天</div>
	  </div>
	  <span class="help-block">聊天时间</span>

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