<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/money.css">
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/money_list.css">
<script type="text/javascript" src="<?php echo MODULE_URL;?>template/mobile/style/money.js"></script>

<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'资金明细','touming.png');?>
<!--顶部菜单导航结束-->


<div id="money_banner">
<div class="money_banner_style money_banner_new">我的收益</div>
<div class="money_banner_style">我的提现</div>
<div class="money_banner_style">我的支出</div>
<div class="money_banner_style">我的提成</div>
</div>

<div id="money_body">

<div id="money_one">
<?php  if(empty($shouru)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>
<!--明细开始-->
<div id="money_list">
<?php  if(is_array($shouru)) { foreach($shouru as $key => $money) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('money_list', TEMPLATE_INCLUDEPATH)) : (include template('money_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</div>
<!--明细结束-->
</div>

<div id="money_two">
<?php  if(empty($tixian)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>
<!--明细开始-->
<div id="money_list">
<?php  if(is_array($tixian)) { foreach($tixian as $key => $money) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('money_list', TEMPLATE_INCLUDEPATH)) : (include template('money_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</div>
<!--明细结束-->
</div>

<div id="money_three">
<?php  if(empty($zhichu)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>
<!--明细开始-->
<div id="money_list">
<?php  if(is_array($zhichu)) { foreach($zhichu as $key => $money) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('money_list', TEMPLATE_INCLUDEPATH)) : (include template('money_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</div>
<!--明细结束-->
</div>

<div id="money_four">
<?php  if(empty($ticheng)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>
<!--明细开始-->
<div id="money_list">
<?php  if(is_array($ticheng)) { foreach($ticheng as $key => $money) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('money_list', TEMPLATE_INCLUDEPATH)) : (include template('money_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</div>
<!--明细结束-->
</div>

</div>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>