<?php

global $_W, $_GPC;
include 'function.php';
include"check.php";



$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $requestdata = array(
            'request_age_small' => $_GPC['request_age_small'],
            'request_age_big' => $_GPC['request_age_big'],
            'request_height_small' => $_GPC['request_height_small'],
            'request_height_big' => $_GPC['request_height_big'],
            'request_weight_small' => $_GPC['request_weight_small'],
            'request_weight_big' => $_GPC['request_weight_big'],
            'request_salary' => $_GPC['request_salary'],
            'request_education' => $_GPC['request_education'],
            'request_area' => $_GPC['request_area'],
        );
        $res = pdo_update('hulu_like_request', $requestdata, array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));
        if (!empty($res)) {
            message('恭喜，修改成功！', $this->createMobileUrl('request'), 'success');
        } else {
            message('抱歉，修改失败！', $this->createMobileUrl('request'), 'error');
        }
    }
} else {
    $request = pdo_fetch("SELECT * FROM" . tablename('hulu_like_request') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

    include $this->template('request');
}
?>