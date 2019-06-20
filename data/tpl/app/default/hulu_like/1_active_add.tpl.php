<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/style.css">
 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/active_add.css">

<link rel="stylesheet" href="//cdn.bootcss.com/jquery-weui/1.0.1/css/jquery-weui.min.css">

<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('active'),'发布活动','touming.png');?>
<!--顶部菜单导航结束-->




<form action="" method="POST">

<div id="hulu">

<div id="hulu_one">
<div class="hulu_a">活动标题</div>
<div class="hulu_b"><input type="text" name="active_title" placeholder="请输入活动标题" required="required"/></div>
</div>

<div id="hulu_one">
<div class="hulu_a">发起类型</div>
<div class="hulu_b">
<select name="active_type">
<option value="1">个人发起</option>
<option value="2">商家发起</option>
<option value="3">官方发起</option>

</select>
</div>
</div>

<div id="hulu_one">
<div class="hulu_a">男生人数</div>
<div class="hulu_b"><input type="number" name="active_boy" placeholder="请输入男生人数" required="required"/></div>
</div>

<div id="hulu_one">
<div class="hulu_a">女生人数</div>
<div class="hulu_b"><input type="number" name="active_girl" placeholder="请输入女生人数" required="required"/></div>
</div>

<div id="hulu_one">
<div class="hulu_a">每人费用</div>
<div class="hulu_b"><input type="number" name="active_money" placeholder="请输入每人费用" required="required"/></div>
</div>

<div id="hulu_one">
<div class="hulu_a">活动地点</div>
<div class="hulu_b"><input type="text" name="active_address" placeholder="请输入活动地址" required="required"/></div>
</div>

<div id="hulu_one">
<div class="hulu_a">开始时间</div>
<div class="hulu_b"><input type="text" name="active_starttime" placeholder="请输入开始时间" required="required" readonly="readonly"/></div>
</div>

<div id="hulu_one">
<div class="hulu_a">结束时间</div>
<div class="hulu_b"><input type="text" name="active_endtime" placeholder="请输入结束时间" required="required" readonly="readonly"/></div>
</div>

<div id="hulu_one">
<div class="hulu_a">微信号码</div>
<div class="hulu_b"><input type="text" name="active_wechat" placeholder="请输入微信号码" required="required"/></div>
</div>

<div id="hulu_one">
<div class="hulu_a">联系电话</div>
<div class="hulu_b"><input type="number" name="active_tel" placeholder="请输入联系电话" required="required"/></div>
</div>

<div id="textarea_one">
<div class="textarea_a">活动内容</div>
<div class="textarea_b"><textarea name="active_content" placeholder="请输入活动内容" required="required"/></textarea></div>
</div>

</div>

<div id="ok_one">
<div class="ok_one_style"><input type="submit" name="submit" value="提 交"/></div>
</div>

<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>
 <?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>

<script src="//cdn.bootcss.com/jquery-weui/1.0.1/js/jquery-weui.min.js"></script>
 <script>
  $("input[name='active_starttime']").datetimePicker();
  $("input[name='active_endtime']").datetimePicker();
</script>

