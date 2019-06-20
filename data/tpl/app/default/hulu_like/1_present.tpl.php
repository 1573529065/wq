<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/gift.css">

<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'收到的礼物','touming.png');?>
<!--顶部菜单导航结束-->

<?php  if(empty($present)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>

<div id="gift_list">
<?php  if(is_array($present)) { foreach($present as $key => $present) { ?>

<a href="<?php  echo $this->createMobileUrl('view',array('vid'=>getuid($_W['uniacid'],$present['present_send'])));?>">

<div class="gift_list_style">
<div class="gift_list_pic">
<img src="<?php  echo $_W['attachurl'];?><?php  echo getgiftpic($_W['uniacid'],$present['gift_id']);?>"/>
</div>
<div class="gift_list_name"><?php  echo getgiftname($_W['uniacid'],$present['gift_id']);?></div>
<div class="gift_list_money">￥：<?php  echo getgiftmoney($_W['uniacid'],$present['gift_id']);?></div>
</div>
</a>

<?php  } } ?>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>