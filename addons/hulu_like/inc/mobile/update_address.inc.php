<?php

global $_W,$_GPC;

if($_W['ispost']){

	if($_W['isajax']){

$user=pdo_fetchall("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));
if(!empty($user)){
	$new_address=(($_GPC['address_lon']).','.($_GPC['address_lat']));
	pdo_update('hulu_like_user',array('address'=>$new_address),array('uniacid'=>$_W['uniacid'],'openid'=>$_W['openid']));
		echo'地址更新成功';

}
	}

}

?>