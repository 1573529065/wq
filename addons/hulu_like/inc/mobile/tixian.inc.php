<?php


global $_W;
include"function.php";
include"check.php";

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$more=pdo_fetch("SELECT * FROM".tablename('hulu_like_more')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));

if((!empty($more['more_tixian_name']))&&(!empty($more['more_tixian_tel']))&&(!empty($more['more_tixian_wechat']))){


$moneydata=pdo_fetchall("SELECT * FROM".tablename('hulu_like_money')."WHERE uniacid=:uniacid AND openid=:openid AND money_pid in (2,3) AND money_state in (2,3,4)",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));

foreach($moneydata as $key=>$v){
$money_money+=$v['money_money'];
}
$money_money=round($money_money,4);

$tixiandata=pdo_fetchall("SELECT * FROM".tablename('hulu_like_tixian')."WHERE uniacid=:uniacid AND openid=:openid AND money_pid in (2,3) AND money_state in (2,3,4) ORDER BY money_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));


foreach($tixiandata as $key=>$vo){
$tixian_money+=$vo['money_money'];
}
$tixian_money=round($tixian_money,4);

$money=$money_money-$tixian_money;


$make_tixian_money=round($make['make_tixian_money'],4);
$tixian_time=$tixiandata[0]['money_time']+($make['make_tixian_time']*24*3600);



if($money>$make_tixian_money){
if($_W['timestamp']>=$tixian_time){

//

$tixian=array(
'uniacid'=>$_W['uniacid'],
'openid'=>$_W['openid'],
'money_pid'=>'2',
'money_state'=>'2',
'money_money'=>$money,
'money_time'=>$_W['timestamp'],
'money_ip'=>$_W['clientip'],
'money_container'=>$_W['container'],
'money_os'=>$_W['os'],
);
$res=pdo_insert('hulu_like_tixian',$tixian);
if(!empty($res)){
message("申请提现成功，等待审核处理！",$this->createMobileUrl('my'),"success");
}else{
	message("申请提现失败，请重试！",$this->createMobileUrl('my'),"error");

}
//

}else{ message("请在".date('Y-m-d H:i:s',$tixian_time)."之后才能提现！",$this->createMobileUrl('my'),"error");}
}else{ message("余额超过".round($make['make_tixian_money'],4)."元才能提现！",$this->createMobileUrl('my'),"error");}

}else{ message("请先完善提现资料！",$this->createMobileUrl('tixian_info'),"error");}
?>