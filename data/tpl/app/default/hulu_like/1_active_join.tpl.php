<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/style.css">

<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('active'),'参与活动','touming.png');?>
<!--顶部菜单导航结束-->

<form action="" method="POST">

<div id="hulu">

<div id="hulu_one">
<div class="hulu_a">姓名</div>
<div class="hulu_b"><input type="text" name="join_name" placeholder="请输入姓名" required="required"/></div>
</div>


<div id="hulu_one">
<div class="hulu_a">微信</div>
<div class="hulu_b"><input type="text" name="join_wechat" placeholder="请输入微信" required="required" value="<?php  echo $member['member_wechat'];?>"/></div>
</div>

<div id="hulu_one">
<div class="hulu_a">手机号</div>
<div class="hulu_b"><input type="number" name="join_tel" placeholder="请输入手机号" required="required" value="<?php  echo $member['member_tel'];?>"/></div>
</div>


</div>

<div id="ok_one">
<div class="ok_one_style"><input type="submit" name="submit" value="提 交"/></div>
</div>

<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>
 <?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>