<?php

global $_W,$_GPC;

include 'function.php';
include"check.php";

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$order=pdo_fetch("SELECT * FROM".tablename('hulu_like_order')."WHERE uniacid=:uniacid AND order_num=:order_num",array(':uniacid'=>$_W['uniacid'],':order_num'=>$_GPC['order_num']));

if(!empty($order)){
if($order['order_pid']=='1'){

if($order['order_type']=="1"){$order_title="开通VIP";}
elseif($order['order_type']=="2"){$order_title="参与活动定金";}
elseif($order['order_type']=='3'){$order_title="充值".$order['order_money']*$make['make_jinbi_bili'].$make['make_jinbi_name'];}
elseif($order['order_type']=="4"){$order_title="送礼物";}
elseif($order['order_type']=="5"){$order_title="打赏";}
elseif($order['order_type']=="6"){$order_title="赞赏说说";}
	// 一些业务代码。
	//构造支付请求中的参数
	$params = array(
		'tid' => $order['order_num'],      
		'ordersn' => $order['order_num'],       
		'title' =>$order_title,          
		'fee' => round($order['order_money'],4),      
		'user' => $_W['member']['uid'],    
	);



	$this->pay($params);

}else{msg('抱歉，该订单已经支付！',$this->createMobileUrl('fengmian'),'error');}
}else{msg('抱歉，该订单不存在！',$this->createMobileUrl('fengmian'),'error');}
?>