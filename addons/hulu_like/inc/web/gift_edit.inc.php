<?php

global $_W, $_GPC;

if ($_W['ispost']) {
    if (checksubmit('submit')) {

//
        $giftdata = array(

            'gift_pid' => $_GPC['gift_pid'],
            'gift_did' => $_GPC['gift_did'],
            'gift_name' => $_GPC['gift_name'],
            'gift_money' => $_GPC['gift_money'],
            'gift_picture' => $_GPC['gift_picture'],
            'gift_time' => $_W['timestamp'],
            'gift_ip' => $_W['clientip'],

        );
        $res = pdo_update('hulu_like_gift', $giftdata, array('uniacid' => $_W['uniacid'], 'gift_id' => $_GPC['gift_id']));
        if (!empty($res)) {
            message('恭喜，操作成功！', $this->createWebUrl('gift'), 'success');
        } else {
            message('抱歉，操作失败！', $this->createWebUrl('gift'), 'error');


        }

//

    }

} else {

    if (!empty($_GPC['gift_id'])) {

        $gift = pdo_fetch("SELECT * FROM" . tablename('hulu_like_gift') . "WHERE uniacid=:uniacid AND gift_id=:gift_id", array(':uniacid' => $_W['uniacid'], ':gift_id' => $_GPC['gift_id']));

        if (!empty($gift)) {


            include $this->template('web/page/gift_edit');


        } else {
            message('抱歉！您要修改的信息不存在！', $this->createWebUrl('ads'), 'error');
        }

    } else {
        message('警告！请勿提交非法网址！', $this->createWebUrl('ads'), 'error');
    }

}
?>