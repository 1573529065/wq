<?php
global $_W, $_GPC;
include "function.php";

$sql = "";
$type = $_GPC['type'];
if ($type != "") {
    $sql = "AND money_state='" . $type . "' ";
}
$total = pdo_fetchcolumn("SELECT count(*) FROM" . tablename('hulu_like_money') . "WHERE uniacid=:uniacid " . $sql, array(':uniacid' => $_W['uniacid']));

//分页开始
$pageIndex = max(1, intval($_GPC['page']));
$pageSize = 20;
$pagination = pagination($total, $pageIndex, $pageSize);
$money = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_money') . "WHERE uniacid=:uniacid " . $sql . " ORDER BY money_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
//分页结束

include $this->template('web/money');
?>