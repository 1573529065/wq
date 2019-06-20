<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<div class="panel panel-default">
  <div class="panel-heading">模板消息</div>
  <div class="panel-body">



<form class="form-horizontal" role="form" action="" method="POST">

<!--表单开始-->
  <div class="form-group">
    <label class="col-sm-2 control-label">发送消息模板ID</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="" name="muban_send_news" value="<?php  echo $muban['muban_send_news'];?>" placeholder="请输入发送消息模板ID">
	  <span class="help-block">模板行业：IT科技（互联网/电子商务）；模板标题：用户咨询提醒；模板编号：OPENTM202119578</span>
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