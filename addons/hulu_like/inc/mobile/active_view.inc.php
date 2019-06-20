<?php

global $_W,$_GPC;

include'function.php';

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

$active=pdo_fetch("SELECT * FROM".tablename('hulu_like_active')."WHERE uniacid=:uniacid AND active_id=:active_id",array(':uniacid'=>$_W['uniacid'],':active_id'=>$_GPC['active_id']));

	$join=pdo_fetch("SELECT * FROM".tablename('hulu_like_join')."WHERE uniacid=:uniacid AND active_id=:active_id AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':active_id'=>$_GPC['active_id'],':openid'=>$_W['openid']));

$join_boy=pdo_fetchall("SELECT * FROM".tablename('hulu_like_join')."WHERE uniacid=:uniacid AND active_id=:active_id AND join_sex=:join_sex AND join_pid=:join_pid",array(':uniacid'=>$_W['uniacid'],':active_id'=>$_GPC['active_id'],':join_sex'=>'1',':join_pid'=>'3'));

$join_girl=pdo_fetchall("SELECT * FROM".tablename('hulu_like_join')."WHERE uniacid=:uniacid AND active_id=:active_id AND join_sex=:join_sex AND join_pid=:join_pid",array(':uniacid'=>$_W['uniacid'],':active_id'=>$_GPC['active_id'],':join_sex'=>'2',':join_pid'=>'3'));

$joindata=pdo_fetchall("SELECT * FROM".tablename('hulu_like_join')."WHERE uniacid=:uniacid AND active_id=:active_id AND join_pid=:join_pid ORDER BY join_id DESC",array(':uniacid'=>$_W['uniacid'],':active_id'=>$_GPC['active_id'],':join_pid'=>'3'));


include $this->template('active_view');

?>