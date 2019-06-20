<?php
global $_W;
include 'function.php';
include"check.php";
$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));
$user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
$share_url = trim($_W['siteroot'] . "app/index.php?i=" . $_W['uniacid'] . "&c=entry&share=" . $_W['openid'] . "&do=my&m=hulu_like");
if ($user['user_share'] == '2') {//为推广员
    include $this->template('tuiguang');
} else {
    message('抱歉，您还没有开通推广员权限，请联系客服开通!',$this->createMobileUrl('my'),'error');
}

?>