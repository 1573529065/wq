<?php

global $_W;

include"function.php";
include"check.php";

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$zhichu=pdo_fetchall("SELECT * FROM".tablename('hulu_like_money')."WHERE uniacid=:uniacid AND openid=:openid AND money_state=:money_state ORDER BY money_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid'],':money_state'=>'1'));

//$tixian=pdo_fetchall("SELECT * FROM".tablename('hulu_like_money')."WHERE uniacid=:uniacid AND openid=:openid AND money_state=:money_state ORDER BY money_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid'],':money_state'=>'2'));

$tixian=pdo_fetchall("SELECT * FROM".tablename('hulu_like_tixian')."WHERE uniacid=:uniacid AND openid=:openid AND money_state=:money_state ORDER BY money_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid'],':money_state'=>'2'));

$shouru=pdo_fetchall("SELECT * FROM".tablename('hulu_like_money')."WHERE uniacid=:uniacid AND openid=:openid AND money_state=:money_state ORDER BY money_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid'],':money_state'=>'3'));


$ticheng=pdo_fetchall("SELECT * FROM".tablename('hulu_like_money')."WHERE uniacid=:uniacid AND openid=:openid AND money_state=:money_state ORDER BY money_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid'],':money_state'=>'4'));

include $this->template('money');


?>