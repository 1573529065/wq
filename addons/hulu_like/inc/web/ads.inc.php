<?php
global $_W, $_GPC;

if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $adsdata = array(
            'uniacid' => $_W['uniacid'],
            'ads_pid' => $_GPC['ads_pid'],
            'ads_did' => $_GPC['ads_did'],
            'ads_title' => $_GPC['ads_title'],
            'ads_link' => $_GPC['ads_link'],
            'ads_pic' => $_GPC['ads_pic'],
            'ads_time' => $_W['timestamp'],
            'ads_ip' => $_W['clientip'],
        );
        $res = pdo_insert('hulu_like_ads', $adsdata);
        if (!empty($res)) {
            message('恭喜，操作成功！', $this->createWebUrl('ads'), 'success');
        } else {
            message('抱歉，操作失败！', $this->createWebUrl('ads'), 'error');
        }
    }
} else {
    $ads = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_ads') . "WHERE uniacid=:uniacid ORDER BY ads_id DESC", array(':uniacid' => $_W['uniacid']));
    load()->func('tpl');

    include $this->template('web/ads');
}
?>