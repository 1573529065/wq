<?php

global $_W, $_GPC;


if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $taocandata = array(
            'uniacid' => $_W['uniacid'],
            'taocan_pid' => $_GPC['taocan_pid'],
            'taocan_did' => $_GPC['taocan_did'],
            'taocan_liaotian_jinbi' => $_GPC['taocan_liaotian_jinbi'],
            'taocan_liaotian_person' => $_GPC['taocan_liaotian_person'],
            'taocan_liaotian_time' => $_GPC['taocan_liaotian_time'],

        );
        $res = pdo_insert('hulu_like_taocan', $taocandata);
        if (!empty($res)) {
            message('恭喜，操作成功！', $this->createWebUrl('taocan'), 'success');
        } else {
            message('抱歉，操作失败！', $this->createWebUrl('taocan'), 'error');
        }
    }

} else {

    $taocan = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_taocan') . "WHERE uniacid=:uniacid ORDER BY taocan_id DESC", array(':uniacid' => $_W['uniacid']));

    include $this->template('web/taocan');

}
?>