<?php
global $_W, $_GPC;


if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $newmake = array(
            'make_web_title' => $_GPC['make_web_title'],
            'make_vip_year' => $_GPC['make_vip_year'],
            'make_vip_quarter' => $_GPC['make_vip_quarter'],
            'make_vip_month' => $_GPC['make_vip_month'],
            'make_vip_contact' => $_GPC['make_vip_contact'],
            'make_vip_freechat' => $_GPC['make_vip_freechat'],
            'make_key' => $_GPC['make_key'],
            'make_secret' => $_GPC['make_secret'],
            'make_sign' => $_GPC['make_sign'],
            'make_msgtemplate' => $_GPC['make_msgtemplate'],
            'make_key_baidu' => $_GPC['make_key_baidu'],
            'make_key_qq' => $_GPC['make_key_qq'],
            'make_user_pid' => $_GPC['make_user_pid'],
            'make_active_proportion' => $_GPC['make_active_proportion'] / 100,
            'make_jinbi_name' => $_GPC['make_jinbi_name'],
            'make_jinbi_bili' => $_GPC['make_jinbi_bili'],
            'make_liaotian_free' => $_GPC['make_liaotian_free'],
            'make_liaotian_jinbi' => $_GPC['make_liaotian_jinbi'],
            'make_liaotian_person' => $_GPC['make_liaotian_person'],
            'make_liaotian_time' => $_GPC['make_liaotian_time'],
            'make_tuiguang_bili' => $_GPC['make_tuiguang_bili'] / 100,
            'make_bili_gift' => $_GPC['make_bili_gift'] / 100,
            'make_bili_dashang' => $_GPC['make_bili_dashang'] / 100,
            'make_bili_liaotian' => $_GPC['make_bili_liaotian'] / 100,
            'make_bili_zanshang' => $_GPC['make_bili_zanshang'] / 100,
            'make_sj_bl' => $_GPC['make_sj_bl'] / 100,
            'make_tixian_time' => $_GPC['make_tixian_time'],
            'make_tixian_money' => $_GPC['make_tixian_money'],
            'make_kefu_qrcode' => $_GPC['make_kefu_qrcode'],
            'make_share_title' => $_GPC['make_share_title'],
            'make_share_content' => $_GPC['make_share_content'],
            'make_share_picture' => $_GPC['make_share_picture'],
            'make_time' => $_W['timestamp'],
            'make_ip' => $_W['clientip'],
            'chat_num_replace' => $_GPC['chat_num_replace'],
            'look_user_tel_type' => $_GPC['look_user_tel_type'],
        );

        $res = pdo_update('hulu_like_make', $newmake, array('uniacid' => $_W['uniacid']));
        if (!empty($res)) {
            message('恭喜，修改成功！', $this->createWebUrl('make'), 'success');
        } else {
            message('抱歉，修改失败！', $this->createWebUrl('make'), 'error');
        }
    }
} else {

    $make = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));
    if (empty($make)) {
        $makedata = array(
            'uniacid' => $_W['uniacid'],
            'make_web_title' => '交友相亲',
            'make_vip_year' => '388.0000',
            'make_vip_quarter' => '348.0000',
            'make_vip_month' => '248.0000',
            'make_vip_contact' => '3',
            'make_vip_freechat' => "1",
            'make_key' => '',
            'make_secret' => '',
            'make_sign' => '',
            'make_msgtemplate' => '',
            'make_key_baidu' => '',
            'make_key_qq' => "",
            'make_user_pid' => '3',
            'make_active_proportion' => '0.1000',
            'make_jinbi_name' => '撩豆',
            'make_jinbi_bili' => '10',
            'make_liaotian_free' => '3',
            'make_liaotian_jinbi' => '100',
            'make_liaotian_person' => '3',
            'make_liaotian_time' => '31',
            'make_tuiguang_bili' => "0.1000",
            'make_bili_gift' => "0.6000",
            'make_bili_dashang' => "0.6000",
            'make_bili_liaotian' => "0.6000",
            'make_bili_zanshang' => "0.6000",
            'make_tixian_time' => "31",
            'make_tixian_money' => "100.0000",
            'make_kefu_qrcode' => "",
            'make_share_title' => "交友相亲，本地交友相亲第一平台！",
            'make_share_content' => "交友相亲，本地交友相亲第一平台！",
            'make_share_picture' => "",
            'make_time' => $_W['timestamp'],
            'make_ip' => $_W['clientip'],
        );
        pdo_insert('hulu_like_make', $makedata);
    } else {

    }
    $make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));


    include $this->template('web/make');
}
?>