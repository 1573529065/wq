<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/order.css">


<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'我的订单','touming.png');?>
<!--顶部菜单导航结束-->



<?php  if(empty($order)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>
<!--明细开始-->
<div id="order_list">
<?php  if(is_array($order)) { foreach($order as $key => $order) { ?>

<div class="order_list_style">

<div class="order_list_one">
<div class="order_list_one_a"><?php  echo date('H:i',$order['order_starttime']);?></div>
<div class="order_list_one_b"><?php  echo date('m-d',$order['order_starttime']);?></div>
</div>

<div class="order_list_two">
<div class="order_list_two_pic"><img src="<?php  echo getavatar($_W['uniacid'],$order['openid']);?>"/></div>
</div>


<div class="order_list_three">
<div class="order_list_three_a">￥：<?php  echo round($order['order_money'],4);?></div>
<div class="order_list_three_b"><?php  echo getordertype($order['order_type']);?></div>
</div>

<div class="order_list_four">
<?php  if($order['order_pid']=="1") { ?>
<div class="order_list_four_p1">未支付</div>
<?php  } else if($order['order_pid']=="2") { ?>
<div class="order_list_four_p2">已支付</div>
<?php  } else { ?><?php  } ?>
</div>

</div>

<?php  } } ?>
</div>
<!--明细结束-->


<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>