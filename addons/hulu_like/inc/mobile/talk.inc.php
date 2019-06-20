<?php
global $_W, $_GPC;
include 'function.php';
if (!$_GPC['getmore']) {
    check();
}
$page = (int) $_GPC['page'];
if ($page == 0) {
    $page = 1;
}
$page_size = 20;
$limit = " limit " . ($page - 1) * $page_size . ',' . $page_size;

$make = pdo_fetch("SELECT * FROM " . tablename('hulu_like_make') . " WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));
$chat_num_replace = $make['chat_num_replace'];
$ads = pdo_fetchall("SELECT * FROM " . tablename('hulu_like_ads') . " WHERE uniacid=:uniacid AND ads_pid=:ads_pid ORDER BY ads_did ASC", array(':uniacid' => $_W['uniacid'], ':ads_pid' => '1'));
$talk = pdo_fetchall("SELECT * FROM " . tablename('hulu_like_talk') . " WHERE uniacid=:uniacid AND talk_pid=:talk_pid ORDER BY talk_did DESC,talk_id DESC $limit", array(':uniacid' => $_W['uniacid'], ':talk_pid' => '3'));
if ($_GPC['getmore']) {
    if ($talk) {
        foreach ($talk as $key => $talk) {
            include $this->template('talk_list');
        }
    }
    exit;
} else {
    auth();
    include $this->template('talk');
}
?>