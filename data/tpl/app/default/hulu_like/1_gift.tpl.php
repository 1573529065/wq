<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/gift.css">

<!--顶部菜单导航开始-->
<?php  echo topmenu("javascript:history.go(-1);",'礼物商城','touming.png');?>
<!--顶部菜单导航结束-->

<?php  if(empty($gift)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>

<div id="gift_list">
<?php  if(is_array($gift)) { foreach($gift as $key => $gift) { ?>

<a href="<?php  echo $this->createMobileUrl('gift_send',array('receive'=>$receive,'gift_id'=>$gift['gift_id']));?>">

<div class="gift_list_style">
<div class="gift_list_pic">
<img src="<?php  echo $_W['attachurl'];?><?php  echo $gift['gift_picture'];?>"/>
</div>
<div class="gift_list_name"><?php  echo $gift['gift_name'];?></div>
<div class="gift_list_money">￥：<?php  echo round($gift['gift_money'],2);?></div>
</div>
</a>

<?php  } } ?>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>