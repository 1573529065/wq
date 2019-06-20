<?php

global $_W, $_GPC;

include 'function.php';
include"check.php";

$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

if ($_W['ispost']) {
    if (checksubmit('submit')) {


        if (($_GPC['real_tel']) && ($_GPC['real_code'])) {

            $more = pdo_fetch("SELECT * FROM" . tablename('hulu_like_more') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

            if ($_GPC['real_tel'] == $more['more_real_tel']) {
                if ($_GPC['real_code'] == $more['more_real_code']) {

                    $res1 = pdo_update('hulu_like_more', array('more_real_tel_pid' => '2'), array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));

                    $res2 = pdo_update('hulu_like_user', array('realname' => $make['look_user_tel_type']==1?'3':'2'), array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));


                    if ((!empty($res1)) && (!empty($res2))) {
                        message('恭喜，手机验证成功！', $this->createMobileUrl('my'), 'success');
                    } else {
                        message('抱歉，手机验证失败！', $this->createMobileUrl('real'), 'error');
                    }
                } else {
                    message('验证码错误！', $this->createMobileUrl('real'), 'error');
                }
            } else {
                message('手机号码不一致！', $this->createMobileUrl('real'), 'error');
            }
        } else {
            message('手机号码与验证码不能为空', $this->createMobileUrl('real'), 'error');
        }
    }
} else {

    $length = 6;
    $authcode = str_pad(mt_rand(0, pow(10, $length) - 1), $length, '0', STR_PAD_LEFT);
    
    if ($make['look_user_tel_type'] == 1) {
        $picture = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_picture') . "WHERE uniacid=:uniacid AND openid=:openid AND picture_type=:picture_type ORDER BY picture_id DESC", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid'], ':picture_type' => 'userid'));
        $picture_type = 'userid';
        $add_info = '身份证正反面';        
    }

    
    include $this->template('real');
}
?>