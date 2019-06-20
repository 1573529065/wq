<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>

<!--顶部菜单导航开始-->

<?php  echo topmenu($this->createMobileUrl('my'),'提现资料','touming.png');?>

<!--顶部菜单导航结束-->

<div id="input_one">

<form action="" method="POST">

<div id="input_one_style">
<div class="input_one_a">姓名<span>*</span></div>
<div class="input_one_b"><input type="text" name="more_tixian_name" placeholder="请输入提现姓名" required="required" value="<?php  echo $more['more_tixian_name'];?>"/></div>
</div>

<div id="input_one_style">
<div class="input_one_a">手机号<span>*</span></div>
<div class="input_one_b"><input type="number" name="more_tixian_tel" placeholder="请输入提现手机号" required="required" value="<?php  echo $more['more_tixian_tel'];?>"/></div>
</div>

<div id="input_one_style">
<div class="input_one_a">微信<span>*</span></div>
<div class="input_one_b"><input type="text" name="more_tixian_wechat" placeholder="请输入提现微信" required="required" value="<?php  echo $more['more_tixian_wechat'];?>"/></div>
</div>

<div id="input_one_style">
<div class="input_one_a">支付宝</div>
<div class="input_one_b"><input type="text" name="more_tixian_alipay" placeholder="请输入提现支付宝" value="<?php  echo $more['more_tixian_alipay'];?>"/></div>
</div>



<div id="input_one_ok">
<div class="input_one_ok_a"><input type="submit" name="submit" value="修 改"/></div>
</div>

<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>
</div>





<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>