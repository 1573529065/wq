<?php
global $_W, $_GPC;
include 'function.php';

$get_page_0 = 0;
$get_page_1 = 0;
$get_page_2 = 0;
$pageSize = 15;
$hit_tab = ($_SESSION['set_page_param'] > 0 ? $_SESSION['set_page_param'] : 0);
${'get_page_'. $hit_tab} = intval($_GPC['page']);

$pageIndex = max(1, $get_page_0);
$sql_count = "SELECT count(*) FROM " . tablename('hulu_like_order') . " WHERE uniacid='".$_W['uniacid']."'";
$order = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_order') . "WHERE uniacid=:uniacid ORDER BY order_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
$total = pdo_fetchcolumn($sql_count);
$pagination_0 = pagination($total, $pageIndex, $pageSize);

for ($i=1; $i <= 2; $i++) {
    $sql_con = '';
    if ($i == 2) {
        $sql_con .= 'and order_pid=2';
    } else if ($i == 1) {
        $sql_con .= 'and order_pid=1';
    }
    $pageIndex = max(1, ${'get_page_'.$i});
    $sql_count = "SELECT count(*) FROM " . tablename('hulu_like_order') . " WHERE uniacid='".$_W['uniacid']."' $sql_con";
    ${'order'.$i} = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_order') . "WHERE uniacid=:uniacid $sql_con ORDER BY order_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
    $total = pdo_fetchcolumn($sql_count);
    ${'pagination_' .$i} = pagination($total, $pageIndex, $pageSize);    
}

include $this->template('web/order');

?>