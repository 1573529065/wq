<?php
global $_W, $_GPC;
if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $giftdata = array(
            'uniacid' => $_W['uniacid'],
            'gift_pid' => $_GPC['gift_pid'],
            'gift_did' => $_GPC['gift_did'],
            'gift_name' => $_GPC['gift_name'],
            'gift_money' => $_GPC['gift_money'],
            'gift_picture' => $_GPC['gift_picture'],
            'gift_time' => $_W['timestamp'],
            'gift_ip' => $_W['clientip'],
        );
        $res = pdo_insert('hulu_like_gift', $giftdata);
        if (!empty($res)) {
            message('恭喜，操作成功！', $this->createWebUrl('gift'), 'success');
        } else {
            message('抱歉，操作失败！', $this->createWebUrl('gift'), 'error');
        }
    }
} else {
    $pageSize = 20;
    $pageIndex = max(1, intval($_GPC['page']));
    $sql_count = "SELECT count(*) FROM " . tablename('hulu_like_gift') . " WHERE uniacid='" . $_W['uniacid'] . "'";
    $gift = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_gift') . "WHERE uniacid=:uniacid ORDER BY gift_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
    $total = pdo_fetchcolumn($sql_count);
    $pagination = pagination($total, $pageIndex, $pageSize);

    include $this->template('web/gift');
}
?>