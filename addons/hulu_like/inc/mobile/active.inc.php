<?php

global $_W,$_GPC;

include 'function.php';
check();
$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$ads=pdo_fetchall("SELECT * FROM".tablename('hulu_like_ads')."WHERE uniacid=:uniacid AND ads_pid=:ads_pid ORDER BY ads_did ASC",array(':uniacid'=>$_W['uniacid'],':ads_pid'=>'1'));


$type=isset($_GPC['type'])?$_GPC['type']:"3";


if(in_array($type,array("3","4","5"))){


$active=pdo_fetchall("SELECT * FROM".tablename('hulu_like_active')."WHERE uniacid=:uniacid AND active_pid=:active_pid ORDER BY active_id DESC",array(':uniacid'=>$_W['uniacid'],':active_pid'=>$type));


}elseif($type=="6"){

$active=pdo_fetchall("SELECT * FROM".tablename('hulu_like_active')."WHERE uniacid=:uniacid AND openid=:openid ORDER BY active_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));

}

auth();
include $this->template('active');
?>