<?php

global $_W,$_GPC;
include"function.php";
include"check.php";

if($_W['ispost']){
if(checksubmit('submit')){

$tixiandata=array(
	'more_tixian_name'=>$_GPC['more_tixian_name'],
	'more_tixian_tel'=>$_GPC['more_tixian_tel'],
	'more_tixian_wechat'=>$_GPC['more_tixian_wechat'],
	'more_tixian_alipay'=>$_GPC['more_tixian_alipay'],
	);
$res=pdo_update("hulu_like_more",$tixiandata,array('uniacid'=>$_W['uniacid'],'openid'=>$_W['openid']));

if(!empty($res)){
msg('恭喜，修改成功！',$this->createMobileUrl('my'),'success');

}else{		msg('抱歉，修改失败！',$this->createMobileUrl('tixian_info'),'error');

}





}
}else{

	$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$more=pdo_fetch("SELECT * FROM".tablename('hulu_like_more')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));


include $this->template('tixian_info');

}

?>