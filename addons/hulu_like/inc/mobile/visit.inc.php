<?php

global $_W,$_GPC;
include"function.php";
include"check.php";

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$user=pdo_fetch("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));

$type=isset($_GPC['type'])?$_GPC['type']:"1";

if($type=="1"){

if($user['upid']=="4"){
//访问我的
$visit=pdo_fetchall("SELECT * FROM".tablename('hulu_like_viewer')."WHERE uniacid=:uniacid AND viewer_openid=:viewer_openid ORDER BY viewer_time DESC",array(':uniacid'=>$_W['uniacid'],':viewer_openid'=>$_W['openid']));
}

}elseif($type=="2"){
//我访问的
$visit=pdo_fetchall("SELECT * FROM".tablename('hulu_like_viewer')."WHERE uniacid=:uniacid AND openid=:openid ORDER BY viewer_time DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));

}
include $this->template('visit');

?>