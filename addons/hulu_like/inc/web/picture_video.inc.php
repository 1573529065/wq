<?php
global $_W, $_GPC;
$get_page_0 = 0;
$get_page_1 = 0;
$get_page_2 = 0;
$get_page_3 = 0;


$pageSize = 25;
$hit_tab = ($_SESSION['set_page_param'] > 0 ? $_SESSION['set_page_param'] : 0);
${'get_page_'. $hit_tab} = intval($_GPC['page']);

$pageIndex = max(1, $get_page_0);
$sql = "SELECT * FROM " . tablename('hulu_like_picture_video') . " WHERE uniacid='".$_W['uniacid']."' ORDER BY picture_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize;
$sql_count = "SELECT count(*) FROM " . tablename('hulu_like_picture_video') . " WHERE uniacid='".$_W['uniacid']."' ORDER BY picture_id DESC";
$picture0 = pdo_fetchall($sql);
$total = pdo_fetchcolumn($sql_count);
$pagination_0 = pagination($total, $pageIndex, $pageSize);

$pageIndex = max(1, $get_page_1);
$sql = "SELECT * FROM " . tablename('hulu_like_picture_video') . " WHERE uniacid='".$_W['uniacid']."' AND picture_pid=1 ORDER BY picture_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize;
$sql_count = "SELECT count(*) FROM " . tablename('hulu_like_picture_video') . " WHERE uniacid='".$_W['uniacid']."'  AND picture_pid=1 ORDER BY picture_id DESC";
$picture1 = pdo_fetchall($sql);
$total = pdo_fetchcolumn($sql_count);
$pagination_1 = pagination($total, $pageIndex, $pageSize);

$pageIndex = max(1, $get_page_2);
$sql = "SELECT * FROM " . tablename('hulu_like_picture_video') . " WHERE uniacid='".$_W['uniacid']."' AND picture_pid=2 ORDER BY picture_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize;
$sql_count = "SELECT count(*) FROM " . tablename('hulu_like_picture_video') . " WHERE uniacid='".$_W['uniacid']."'  AND picture_pid=2 ORDER BY picture_id DESC";
$picture2 = pdo_fetchall($sql);
$total = pdo_fetchcolumn($sql_count);
$pagination_2 = pagination($total, $pageIndex, $pageSize);

$pageIndex = max(1, $get_page_3);
$sql = "SELECT * FROM " . tablename('hulu_like_picture_video') . " WHERE uniacid='".$_W['uniacid']."' AND picture_pid=3 ORDER BY picture_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize;
$sql_count = "SELECT count(*) FROM " . tablename('hulu_like_picture_video') . " WHERE uniacid='".$_W['uniacid']."'  AND picture_pid=3 ORDER BY picture_id DESC";
$picture3 = pdo_fetchall($sql);
$total = pdo_fetchcolumn($sql_count);
$pagination_3 = pagination($total, $pageIndex, $pageSize);

include $this->template('web/picture_video');
?>