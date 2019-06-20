<?php

global $_W, $_GPC;
include 'function.php';
include"check.php";

$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

if ($_W['ispost']) {
    if ($_W['isajax']) {
        $newpicture = array(
            'uniacid' => $_W['uniacid'],
            'openid' => $_W['openid'],
            'picture_pid' => '2',
            'picture_pic' => $_GPC['picture_pic'],
            'picture_time' => $_W['timestamp'],
            'picture_ip' => $_W['clientip'],
            'picture_container' => $_W['container'],
            'picture_os' => $_W['os'],
        );
        $res = pdo_insert('hulu_like_picture', $newpicture);
        if (!empty($res)) {
            echo'恭喜，上传成功！';
        } else {
            
        }
    }
} else {

    $picture = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_picture') . "WHERE uniacid=:uniacid AND openid=:openid AND picture_type=:picture_type ORDER BY picture_id DESC", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid'], ':picture_type' => 'show'));

    load()->func('tpl');
    include $this->template('picture');
}
?>