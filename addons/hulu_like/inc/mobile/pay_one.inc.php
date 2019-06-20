<?php

global $_W,$_GPC;

include 'function.php';
include"check.php";

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

if($_GPC['vip_days']=='31'){$order_money=$make['make_vip_month'];}
elseif($_GPC['vip_days']=='92'){$order_money=$make['make_vip_quarter'];}
elseif($_GPC['vip_days']=='365'){$order_money=$make['make_vip_year'];}

	//获取用户要充值的金额数
	$fee = floatval($order_money);
	if($fee <= 0) {
		message('支付错误, 金额小于0');
	}
	// 一些业务代码。
	//构造支付请求中的参数
	$params = array(
		'tid' => $_GPC['order_num'],      
		'ordersn' => $_GPC['order_num'],       
		'title' => '升级VIP',          
		'fee' => $fee,      
		'user' => $_W['member']['uid'],    
	);

	//===
	$order_old=pdo_fetchall("SELECT * FROM".tablename('hulu_like_order')."WHERE uniacid=:uniacid AND order_num=:order_num",array(':uniacid'=>$_W['uniacid'],':order_num'=>$_GPC['order_num']));

if(empty($order_old)){

	$orderdata=array(
	'uniacid'=>$_W['uniacid'],
	'openid'=>$_W['openid'],
	'order_pid'=>'1',
	'order_type'=>'1',
	'order_num'=>$_GPC['order_num'],
	'order_money'=>$fee,
	'order_starttime'=>$_W['timestamp'],
	'order_endtime'=>'',

	'order_ip'=>$_W['clientip'],
	'order_container'=>$_W['container'],
	'order_os'=>$_W['os'],
		'order_vip_days'=>$_GPC['vip_days'],

	);
	pdo_insert('hulu_like_order',$orderdata);

}
	//===

	$this->pay($params);


			
?>