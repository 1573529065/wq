<?php

global $_W, $_GPC;

include 'function.php';
include "check.php";

$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

if ($_SESSION['biaoshi']) {
    $_W['openid'] = $_SESSION['biaoshi'];
}
if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
        if (empty($_GPC['sex'])) {
            $sex = $user['sex'];
        } elseif (!empty($_GPC['sex'])) {
            $sex = $_GPC['sex'];
        }

        $memberdata = array(
            'member_birthday' => strtotime(($_GPC['birth']['year']) . ($_GPC['birth']['month']) . ($_GPC['birth']['day'])),
            'member_height' => $_GPC['member_height'],
            'member_weight' => $_GPC['member_weight'],
            'member_purpose' => $_GPC['member_purpose'] ? $_GPC['member_purpose'] : '',
            'member_feeling' => $_GPC['member_feeling'] ? $_GPC['member_feeling'] : '',
            'member_marry' => $_GPC['member_marry'] ? $_GPC['member_marry'] : '',
            'member_wechat' => $_GPC['member_wechat'] ? $_GPC['member_wechat'] : '1',
            'member_tel' => $_GPC['member_tel'] ? $_GPC['member_tel'] : '1',

            'member_edu' => $_GPC['member_edu'],
            'member_salary' => $_GPC['member_salary'],
            'member_house' => $_GPC['member_house'],
            'member_career' => $_GPC['member_career'],
            'member_nation' => trim($_GPC['member_nation']),

            'member_province' => $_GPC['member_address']['province'],
            'member_city' => $_GPC['member_address']['city'],
            'member_district' => $_GPC['member_address']['district'],
            'member_content' => $_GPC['member_content'],
        );

        $userdata = array(
            'nickname' => $_GPC['nickname'],
            'sex' => $sex,
            'set_close' => $_GPC['set_close'],
            'set_close' => $_GPC['set_close'],
        );

        //var_dump($userdata);exit();
        $res1 = pdo_update('hulu_like_user', $userdata, array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));
        $res2 = pdo_update('hulu_like_member', $memberdata, array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));

        $requestdata = array(
            'request_age_small' => $_GPC['request_age_small'] ? $_GPC['request_age_small'] : '',
            'request_age_big' => $_GPC['request_age_big'] ? $_GPC['request_age_big'] : '',
            'request_height_small' => $_GPC['request_height_small'] ? $_GPC['request_height_small'] : '',
            'request_height_big' => $_GPC['request_height_big'] ? $_GPC['request_height_big'] : '',
            'request_weight_small' => $_GPC['request_weight_small'] ? $_GPC['request_weight_small'] : '',
            'request_weight_big' => $_GPC['request_weight_big'] ? $_GPC['request_weight_big'] : '',
            'request_salary' => $_GPC['request_salary'] ? $_GPC['request_salary'] : '',
            'request_education' => $_GPC['request_education'] ? $_GPC['request_education'] : '',
            'request_area' => $_GPC['request_area'] ? $_GPC['request_area'] : '',
        );
        $res = pdo_update('hulu_like_request', $requestdata, array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));

        if ((!empty($res1)) || (!empty($res2)) || (!empty($res))) {
            message('恭喜，修改成功！', $this->createMobileUrl('my'), 'success');
        } else {
            message('抱歉，修改失败！', $this->createMobileUrl('info'), 'error');
        }
    }
} else {
    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
    $member = pdo_fetch("SELECT * FROM" . tablename('hulu_like_member') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
    $request = pdo_fetch("SELECT * FROM" . tablename('hulu_like_request') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
    load()->func('tpl');
    include $this->template('info');
}
?>