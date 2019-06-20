<?php

global $_W,$_GPC;
include'function.php';

$receive=$_GPC['receive'];
$user=pdo_fetchall("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$receive));

if(!empty($user)){
$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$gift=pdo_fetchall("SELECT * FROM".tablename('hulu_like_gift')."WHERE uniacid=:uniacid AND gift_pid=:gift_pid ORDER BY gift_did ASC",array(':uniacid'=>$_W['uniacid'],':gift_pid'=>'1'));


include $this->template('gift');

}else{

msg('请选择礼物接受者',$this->createMobileUrl('fengmian'),'error');
}

?>