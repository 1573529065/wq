<?php

global $_W, $_GPC;
include "function.php";

$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

$user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

$type = isset($_GPC['type']) ? $_GPC['type'] : "1";

if ($type == "1") {

    if ($user['upid'] == "4") {
//访问我的
        $like = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_like') . "WHERE uniacid=:uniacid AND like_openid=:like_openid", array(':uniacid' => $_W['uniacid'], ':like_openid' => $_W['openid']));
    }

} elseif ($type == "2") {
//我访问的
    $like = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_like') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

}


include $this->template('like');

?>