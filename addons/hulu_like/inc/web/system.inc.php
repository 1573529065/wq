<?php
global $_W, $_GPC;
include 'function.php';

$pageSize = 20;
$pageIndex = max(1, intval($_GPC['page']));
$sql_count = "SELECT count(*) FROM " . tablename('hulu_like_system') . " WHERE uniacid='".$_W['uniacid']."'";
$system = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_system') . "WHERE uniacid=:uniacid ORDER BY system_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
$total = pdo_fetchcolumn($sql_count);
$pagination = pagination($total, $pageIndex, $pageSize);


include $this->template('web/system');

?>