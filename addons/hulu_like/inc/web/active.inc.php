<?php
global $_W, $_GPC;
include 'function.php';

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
    $get_page_0 = 0;
    $get_page_1 = 0;
    $get_page_2 = 0;
    $get_page_3 = 0;
    $get_page_4 = 0;
    $get_page_5 = 0;
    $pageSize = 15;
    $hit_tab = ($_SESSION['set_page_param'] > 0 ? $_SESSION['set_page_param'] : 0);
    ${'get_page_'. $hit_tab} = intval($_GPC['page']);

    $pageIndex = max(1, $get_page_0);
    $sql_count = "SELECT count(*) FROM " . tablename('hulu_like_active') . " WHERE uniacid='".$_W['uniacid']."'";
    $active = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_active') . "WHERE uniacid=:uniacid ORDER BY active_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
    $total = pdo_fetchcolumn($sql_count);
    $pagination_0 = pagination($total, $pageIndex, $pageSize);

    for ($i=1; $i <= 4; $i++) {
        $sql_con = '';
        if ($i == 5) {
            $sql_con .= 'and active_pid=5';
        } else if ($i == 4) {
            $sql_con .= 'and active_pid=4';
        } else if ($i == 3) {
            $sql_con .= 'and active_pid=3';
        } else if ($i == 2) {
            $sql_con .= 'and active_pid=2';
        } else if ($i == 1) {
            $sql_con .= 'and active_pid=1';
        }
        $pageIndex = max(1, ${'get_page_'.$i});
        $sql_count = "SELECT count(*) FROM " . tablename('hulu_like_active') . " WHERE uniacid='".$_W['uniacid']."' $sql_con";
        ${'active'.$i} = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_active') . "WHERE uniacid=:uniacid $sql_con ORDER BY active_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
        $total = pdo_fetchcolumn($sql_count);
        ${'pagination_' .$i} = pagination($total, $pageIndex, $pageSize);    
    }

    //load()->func('tpl');

    include $this->template('web/active');
}
?>