<?php

global $_W,$_GPC;
include'function.php';
include"check.php";

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$present=pdo_fetchall("SELECT * FROM".tablename('hulu_like_present')."WHERE uniacid=:uniacid AND openid=:openid ORDER BY present_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid']));


include $this->template('present');



?>