<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/visit.css">
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/visit_list.css">


<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'访客','touming.png');?>
<!--顶部菜单导航结束-->


<script>

$(document).ready(function(){
var type="<?php  echo $type-1;?>";
	  	  $(".visit_banner_style").eq(type).addClass("visit_banner_new");
});
</script>

<div id="visit_banner">
<a href="<?php  echo $this->createMobileUrl('visit',array('type'=>'1'));?>">
<div class="visit_banner_style">来访</div>
</a>

<a href="<?php  echo $this->createMobileUrl('visit',array('type'=>'2'));?>">
<div class="visit_banner_style">查看</div>
</a>

</div>






<?php  if($type=="1") { ?>

<?php  if($user['upid']!="4") { ?>
<?php  echo getemptydata("只有VIP会员才能查看来访者！请先开通VIP！",$this->createMobileUrl('vip'));?>
<?php  } else if($user['upid']=="4") { ?>
<?php  if(empty($visit)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>
<?php  } ?>

<?php  } else if($type=="2") { ?>
<?php  if(empty($visit)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>
<?php  } ?>

<!--明细开始-->
<div id="visit_list">
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('distance', TEMPLATE_INCLUDEPATH)) : (include template('distance', TEMPLATE_INCLUDEPATH));?>

<?php  if(is_array($visit)) { foreach($visit as $key => $visit) { ?>

<?php  if($type=="1") { ?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('visit_list1', TEMPLATE_INCLUDEPATH)) : (include template('visit_list1', TEMPLATE_INCLUDEPATH));?>
<?php  } else if($type=="2") { ?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('visit_list2', TEMPLATE_INCLUDEPATH)) : (include template('visit_list2', TEMPLATE_INCLUDEPATH));?>
<?php  } ?>

<?php  } } ?>
</div>
<!--明细结束-->







<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>