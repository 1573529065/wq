<?php

global $_W,$_GPC;

include 'function.php';
include"check.php";


if($_W['ispost']){
if(checksubmit('submit')){



$activedata=array(
	'uniacid'=>$_W['uniacid'],
	'openid'=>$_W['openid'],
	'active_pid'=>'2',
	'active_title'=>$_GPC['active_title'],
	'active_type'=>$_GPC['active_type'],
	'active_boy'=>$_GPC['active_boy'],
	'active_girl'=>$_GPC['active_girl'],
	'active_money'=>$_GPC['active_money'],
	'active_address'=>$_GPC['active_address'],
	'active_starttime'=>strtotime($_GPC['active_starttime']),
	'active_endtime'=>strtotime($_GPC['active_endtime']),
	'active_wechat'=>$_GPC['active_wechat'],
	'active_tel'=>$_GPC['active_tel'],
	'active_content'=>$_GPC['active_content'],
	'active_time'=>$_W['timestamp'],
	'active_ip'=>$_W['clientip'],
	'active_container'=>$_W['container'],
	'active_os'=>$_W['os'],
	);
$res=pdo_insert('hulu_like_active',$activedata);

if(!empty($res)){
	msg('恭喜，发布成功！',$this->createMobileUrl('active'),'success');
}else{
		msg('抱歉，发布失败！',$this->createMobileUrl('active'),'error');
}

}
}else{

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

include $this->template('active_add');
}
?>