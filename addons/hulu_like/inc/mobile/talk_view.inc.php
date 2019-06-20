<?php

global $_W,$_GPC;

include 'function.php';

$talk=pdo_fetchall("SELECT * FROM".tablename('hulu_like_talk')."WHERE uniacid=:uniacid AND talk_id=:talk_id",array(':uniacid'=>$_W['uniacid'],':talk_id'=>$_GPC['vid']));

include $this->template('talk_view');

?>