<?php
global $_W, $_GPC;
if ($_W['ispost']) {
    if ($_W['isajax']) {
        include 'function.php';
        $type = $_GPC['type'];

//美女
        if ($type == '1') {
            $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid and set_close=0 AND sex=:sex AND upid in (3,4) ORDER BY login_time DESC", array(':uniacid' => $_W['uniacid'], ':sex' => '2'));
        }

//帅哥
        if ($type == '2') {
            $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid and set_close=0 AND sex=:sex AND upid in (3,4) ORDER BY login_time DESC", array(':uniacid' => $_W['uniacid'], ':sex' => '1'));
        }

//VIP
        if ($type == '3') {
            $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid and set_close=0 AND upid=:upid ORDER BY login_time DESC", array(':uniacid' => $_W['uniacid'], ':upid' => '4'));
        }


//实名会员
        if ($type == '4') {

            $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid and set_close=0 AND realname=:realname AND upid in (3,4) ORDER BY login_time DESC", array(':uniacid' => $_W['uniacid'], ':realname' => '2'));
        }


        include $this->template('user');
    }
}
?>