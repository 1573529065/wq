<?php
global $_W, $_GPC;

include 'function.php';


if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $sham = array(
            'uniacid' => $_W['uniacid'],
            'sham_nickname' => $_GPC['moni_sham_nickname'],
            'sham_content' => $_GPC['moni_sham_content'],
        );
        $res = pdo_insert('hulu_like_sham', $sham);

        if (!empty($res)) {
            message('恭喜，添加成功！', $this->createWebUrl('moni'), 'success');
        } else {
            message('抱歉，添加失败！', $this->createWebUrl('moni'), 'error');
        }
    }
} else {
    $get_page_0 = 0;
    $get_page_1 = 0;
    $pageSize = 15;
    $hit_tab = ($_SESSION['set_page_param'] > 0 ? $_SESSION['set_page_param'] : 0);
    ${'get_page_'. $hit_tab} = intval($_GPC['page']);

    $pageIndex = max(1, $get_page_0);
    $sql_count = "SELECT count(*) FROM " . tablename('hulu_like_user') . " WHERE uniacid='".$_W['uniacid']."' AND sham=2";
    $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND sham=2 ORDER BY uid DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
    $total = pdo_fetchcolumn($sql_count);
    $pagination_0 = pagination($total, $pageIndex, $pageSize);

    $pageIndex = max(1, $get_page_1);
    $sql_count = "SELECT count(*) FROM " . tablename('hulu_like_sham') . " WHERE uniacid='".$_W['uniacid']."'";
    $moni_sham = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_sham') . "WHERE uniacid=:uniacid ORDER BY sham_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
    $total = pdo_fetchcolumn($sql_count);
    $pagination_1 = pagination($total, $pageIndex, $pageSize);
    
    include $this->template('web/moni');
}
?>