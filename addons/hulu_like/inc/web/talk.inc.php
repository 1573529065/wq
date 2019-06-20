<?php
global $_W, $_GPC;
include "function.php";

$type = isset($_GPC['type']) ? $_GPC['type'] : "0";

if ($type == "0") {
    $talk = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_talk') . "WHERE uniacid=:uniacid ORDER BY talk_id DESC", array(':uniacid' => $_W['uniacid']));
//分页开始
    $pageIndex = max(1, intval($_GPC['page']));
    $pageSize = 20;
    $total = (count($talk));
    $pagination = pagination($total, $pageIndex, $pageSize);
    $talk = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_talk') . "WHERE uniacid=:uniacid ORDER BY talk_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
//分页结束
} elseif ($type != "0") {

    $talk = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_talk') . "WHERE uniacid=:uniacid AND talk_pid=:talk_pid ORDER BY talk_id DESC", array(':uniacid' => $_W['uniacid'], ':talk_pid' => $type));

//分页开始
    $pageIndex = max(1, intval($_GPC['page']));
    $pageSize = 20;
    $total = (count($talk));
    $pagination = pagination($total, $pageIndex, $pageSize);
    $talk = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_talk') . "WHERE uniacid=:uniacid AND talk_pid=:talk_pid ORDER BY talk_id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid'], ':talk_pid' => $type));
//分页结束
}

include $this->template("web/talk");
?>