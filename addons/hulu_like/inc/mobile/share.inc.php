<?php

global $_W;

include 'function.php';
include"check.php";

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$user=pdo_fetch("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));
//if($user['user_share']=='2'){


$beginToday=mktime(0,0,0,date('m'),date('d'),date('Y'));
$endToday=mktime(0,0,0,date('m'),date('d')+1,date('Y'))-1;


//推广人数
$user=pdo_fetchall("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND user_shangji=:user_shangji",array(':uniacid'=>$_W['uniacid'],':user_shangji'=>$_W['openid']));
$one=count($user);


//可领佣金
$moneydata=pdo_fetchall("SELECT * FROM".tablename('hulu_like_money')."WHERE uniacid=:uniacid AND openid=:openid AND money_state=:money_state AND money_pid=:money_pid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid'],':money_state'=>'4',':money_pid'=>'3'));

foreach($moneydata as $key=>$v){
	$two+=$v['money_money'];
}
$two=round($two,4);

//总共佣金
$three=round($two,4);


//今天推广



$user=pdo_fetchall("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND user_shangji=:user_shangji AND reg_time>=".$beginToday." AND reg_time<=".$endToday,array(':uniacid'=>$_W['uniacid'],':user_shangji'=>$_W['openid']));

$four=count($user);

//3天推广
$three_days=$_W['timestamp']-(3*24*3600);

$user=pdo_fetchall("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND user_shangji=:user_shangji AND reg_time>='".$three_days."' ",array(':uniacid'=>$_W['uniacid'],':user_shangji'=>$_W['openid']));

$five=count($user);



//7天推广
$seven_days=$_W['timestamp']-(7*24*3600);

$user=pdo_fetchall("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND user_shangji=:user_shangji AND reg_time>='".$seven_days."' ",array(':uniacid'=>$_W['uniacid'],':user_shangji'=>$_W['openid']));

$six=count($user);


//今天充值

$user=pdo_fetchall("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND user_shangji=:user_shangji",array(':uniacid'=>$_W['uniacid'],':user_shangji'=>$_W['openid']));

foreach($user as $key=>$v){

	$moneydata=pdo_fetchall("SELECT * FROM".tablename('hulu_like_money')."WHERE uniacid=:uniacid AND openid=:openid AND money_state=:money_state AND money_pid=:money_pid AND money_type in (1,3,4,5,6) AND money_time>=".$beginToday." AND money_time<=".$endToday,array(':uniacid'=>$_W['uniacid'],':openid'=>$v['openid'],':money_state'=>'1',':money_pid'=>'3'));

foreach($moneydata as $key=>$vo){
	$seven+=$vo['money_money'];

}

}

$seven=round(abs($seven),4);

//昨天充值
$yesterday=(strtotime('yesterday')); 
$today=strtotime('today'); 
$user=pdo_fetchall("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND user_shangji=:user_shangji",array(':uniacid'=>$_W['uniacid'],':user_shangji'=>$_W['openid']));


foreach($user as $key=>$v){
	$moenydata=pdo_fetchall("SELECT * FROM".tablename('hulu_like_money')."WHERE uniacid=:uniacid AND openid=:openid AND money_state=:money_state AND money_pid=:money_pid AND money_type in (1,3,4,5,6) AND money_time>=".$yesterday." AND money_time<=".$today,array(':uniacid'=>$_W['uniacid'],':openid'=>$v['openid'],':money_state'=>'1',':money_pid'=>'3'));

foreach($moenydata as $key=>$vo){
	$eight+=$vo['money_money'];

}
}
$eight=round(abs($eight),4);




//历史充值
$user=pdo_fetchall("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND user_shangji=:user_shangji",array(':uniacid'=>$_W['uniacid'],':user_shangji'=>$_W['openid']));


foreach($user as $key=>$v){
	$moenydata=pdo_fetchall("SELECT * FROM".tablename('hulu_like_chongzhi')."WHERE uniacid=:uniacid AND openid=:openid AND chongzhi_type=:chongzhi_type",array(':uniacid'=>$_W['uniacid'],':openid'=>$v['openid'],':chongzhi_type'=>'1'));

	$moenydata=pdo_fetchall("SELECT * FROM".tablename('hulu_like_money')."WHERE uniacid=:uniacid AND openid=:openid AND money_state=:money_state AND money_pid=:money_pid AND money_type in (1,3,4,5,6)",array(':uniacid'=>$_W['uniacid'],':openid'=>$v['openid'],':money_state'=>'1',':money_pid'=>'3'));

foreach($moenydata as $key=>$vo){
	$nine+=$vo['money_money'];

}
}


$nine=round(abs($nine),4);

include $this->template('share');

//}else{
	//msg('抱歉，您没有被开通推广员权限！',$this->createMobileUrl('my'),'error');
//}
?>