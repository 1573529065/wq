<?php
global $_W, $_GPC;
include 'function.php';

$get_page_0 = 0;
$get_page_1 = 0;
$pageSize = 15;
$hit_tab = ($_SESSION['set_page_param'] > 0 ? $_SESSION['set_page_param'] : 0);
${'get_page_'. $hit_tab} = intval($_GPC['page']);

$pageIndex = max(1, $get_page_0);
$sql_count = "SELECT count(*) FROM " . tablename('hulu_like_chongzhi') . " WHERE uniacid='".$_W['uniacid']."' AND chongzhi_type=1";
$chongzhi1 = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_chongzhi') . "WHERE uniacid=:uniacid AND chongzhi_type=1 ORDER BY chongzhi_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
$total = pdo_fetchcolumn($sql_count);
$pagination_0 = pagination($total, $pageIndex, $pageSize);


$pageIndex = max(1, $get_page_1);
$sql_count = "SELECT count(*) FROM " . tablename('hulu_like_chongzhi') . " WHERE uniacid='".$_W['uniacid']."' AND chongzhi_type=2";
$chongzhi2 = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_chongzhi') . "WHERE uniacid=:uniacid AND chongzhi_type=2 ORDER BY chongzhi_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
$total = pdo_fetchcolumn($sql_count);
$pagination_1 = pagination($total, $pageIndex, $pageSize);

include $this->template('web/chongzhi');


?>