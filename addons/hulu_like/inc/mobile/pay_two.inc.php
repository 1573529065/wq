<?php

global $_W,$_GPC;

include 'function.php';
include"check.php";

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$active=pdo_fetch("SELECT * FROM".tablename('hulu_like_active')."WHERE uniacid=:uniacid AND active_id=:active_id",array(':uniacid'=>$_W['uniacid'],':active_id'=>$_GPC['active_id']));

$order_money=($active['active_money']*$make['make_active_proportion']);



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
		'title' => '参与活动定金',          
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
	'order_type'=>'2',
	'order_num'=>$_GPC['order_num'],
	'order_money'=>$fee,
	'order_starttime'=>$_W['timestamp'],
	'order_endtime'=>'',

	'order_ip'=>$_W['clientip'],
	'order_container'=>$_W['container'],
	'order_os'=>$_W['os'],

		'order_vip_days'=>$_GPC['vip_days'],
			'order_join_id'=>$_GPC['join_id'],

	);
	pdo_insert('hulu_like_order',$orderdata);

}
	//===

	$this->pay($params);


			
?>