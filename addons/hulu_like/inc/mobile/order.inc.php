<?php

global $_W;

include"function.php";
include"check.php";

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$order=pdo_fetchall("SELECT * FROM".tablename('hulu_like_order')."WHERE uniacid=:uniacid AND openid=:openid ORDER BY order_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));




include $this->template('order');

?>