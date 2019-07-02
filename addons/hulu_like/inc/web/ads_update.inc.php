<?php

global $_W, $_GPC;

if (!empty($_GPC['ads_id'])) {

    $ads = pdo_fetch("SELECT * FROM" . tablename('hulu_like_ads') . "WHERE uniacid=:uniacid AND ads_id=:ads_id", array(':uniacid' => $_W['uniacid'], ':ads_id' => $_GPC['ads_id']));

    if (!empty($ads)) {
        if ($ads['uniacid'] == $_W['uniacid']) {

            $res = pdo_update('hulu_like_ads', array('ads_pid' => $_GPC['ads_pid']), array('uniacid' => $_W['uniacid'], 'ads_id' => $_GPC['ads_id']));
            if (!empty($res)) {
                message('恭喜！修改成功！', $this->createWebUrl('ads'), 'success');
            } else {
                message('抱歉！修改失败！', $this->createWebUrl('ads'), 'error');
            }


        } else {
            message('抱歉！您没有权限修改此信息！', $this->createWebUrl('ads'), 'error');
        }
    } else {
        message('抱歉！您要修改的信息不存在！', $this->createWebUrl('ads'), 'error');
    }

} else {
    message('警告！请勿提交非法网址！', $this->createWebUrl('ads'), 'error');
}

?>