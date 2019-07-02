<?php
global $_W, $_GPC;
include "function.php";

$total = pdo_fetchcolumn("SELECT count(*) FROM" . tablename('hulu_like_talk_pinglun') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

//分页开始
$pageIndex = max(1, intval($_GPC['page']));
$pageSize = 20;
$pagination = pagination($total, $pageIndex, $pageSize);
$pinglun = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_talk_pinglun') . "WHERE uniacid=:uniacid ORDER BY pinglun_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
//分页结束

include $this->template('web/talk_pinglun');

?>