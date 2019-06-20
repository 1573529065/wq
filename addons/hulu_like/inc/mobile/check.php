<?php
//登录开始
if ($_W['container'] == 'android') {//wechat android todo ios
    $_SESSION['nowuser_apptype'] = 'in_app';
}

if(!empty($_GET['biaoshi'])){
	$_W['openid'] = $_GET['biaoshi'];
	 $_SESSION['biaoshi'] = $_GET['biaoshi'];
	 return;
}
if($_SESSION['biaoshi']){
	$_W['openid'] = $_SESSION['biaoshi'];
	return;
}
//print_r($_SESSION);exit;
if ($_W['container'] == 'wechat' || ($_SESSION['nowuser_apptype'] == 'in_app' && $_SESSION['openid'])) {
    if (!empty($_W['openid'])) {
        include 'shouquan.php';
        $url = $_W['siteurl'];
        $code = $_GPC['code'];
        shouquan($url, $code, $_GPC['do'], $_GPC['share']);
    }
} elseif ($_W['container'] != 'wechat') {
    if ((empty($_W['openid'])) || (empty($_SESSION['uid'])) || (empty($_SESSION['nickname']))) {
        header("Location: " . $this->createMobileUrl('login'));
        exit();
    }
}
//登录结束
?>