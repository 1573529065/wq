<?php

global $_W, $_GPC;

include "function.php";
$total = pdo_fetchcolumn("SELECT count(*) FROM" . tablename('hulu_like_like') . "WHERE uniacid=:uniacid ORDER BY like_id DESC", array(':uniacid' => $_W['uniacid']));

//分页开始
$pageIndex = max(1, intval($_GPC['page']));
$pageSize = 20;
$pagination = pagination($total, $pageIndex, $pageSize);
$like = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_like') . "WHERE uniacid=:uniacid ORDER BY like_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
//分页结束


include $this->template("web/like");
?>