<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
    <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/vip.css">
<script type="text/javascript" src="<?php echo MODULE_URL;?>template/mobile/style/vip.js"></script>

<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'升级VIP','touming.png');?>
<!--顶部菜单导航结束-->

<div id="vip_one">
<form action="" method="POST">

<div id="vip_one_style" class="vip_one_style_a">
<div class="vip_one_a">12个月</div> 
<div class="vip_one_b">
<div class="vip_one_b_1"><span><?php  echo round($make['make_vip_year'],2);?></span>元</div>
<div class="vip_one_b_2">日均：<span><?php  echo round($make['make_vip_year']/365,2);?></span>元</div>
</div>
<div class="vip_one_c"><div id="vip_one_c_pic_a" class="vip_one_c_pic"></div></div>
</div>

<div id="vip_one_style" class="vip_one_style_b">
<div class="vip_one_a">3个月</div> 
<div class="vip_one_b">
<div class="vip_one_b_1"><span><?php  echo round($make['make_vip_quarter'],2);?></span>元</div>
<div class="vip_one_b_2">日均：<span><?php  echo round($make['make_vip_quarter']/92,2);?></span>元</div>
</div>
<div class="vip_one_c"><div id="vip_one_c_pic_b" class="vip_one_c_pic"></div></div>
</div>
<!--
<div id="vip_one_style" class="vip_one_style_c">
<div class="vip_one_a">1个月</div> 
<div class="vip_one_b">
<div class="vip_one_b_1"><span><?php  echo round($make['make_vip_month'],2);?></span>元</div>
<div class="vip_one_b_2">日均：<span><?php  echo round($make['make_vip_month']/31,2);?></span>元</div>
</div>
<div class="vip_one_c"><div id="vip_one_c_pic_c" class="vip_one_c_pic"></div></div>
</div>
-->

<div id="vip_one_ok">
<input type="submit" name="submit" value="确认购买"/>
</div>


<input id="vip_days" type="hidden" name="vip_days" value="365"/>

<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>