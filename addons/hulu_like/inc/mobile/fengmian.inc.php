<?php

global $_W, $_GPC;

include 'function.php';
check();
/*$handle = opendir(session_save_path());
while (false !== ($file = readdir($handle))) {
if(!in_array($file, array('.', '..', 'session_dir'))){

$f = fopen ( session_save_path() . "/" . $file, "r" );//打开文件
while (! feof ( $f )) {//循环输出
$line = fgets ( $f );
echo $line."
";
die();
}
fclose($f);
	
}
}
closedir($handle);*/


$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));
$ads = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_ads') . "WHERE uniacid=:uniacid AND ads_pid=:ads_pid ORDER BY ads_did ASC", array(':uniacid' => $_W['uniacid'], ':ads_pid' => '1'));


$fengmian_menu = array(
    array('name' => '最新', 'pic' => 'menu1.png', 'link' => $this->createMobileUrl('fengmian', array('type' => 'new')),),
    array('name' => '美女', 'pic' => 'menu2.png', 'link' => $this->createMobileUrl('fengmian', array('type' => 'girl')),),
    array('name' => '帅哥', 'pic' => 'menu3.png', 'link' => $this->createMobileUrl('fengmian', array('type' => 'boy')),),
    array('name' => 'VIP', 'pic' => 'menu4.png', 'link' => $this->createMobileUrl('fengmian', array('type' => 'vip')),),
    array('name' => '实名会员', 'pic' => 'menu5.png', 'link' => $this->createMobileUrl('fengmian', array('type' => 'real')),),
    array('name' => '搜索', 'pic' => 'menu6.png', 'link' => $this->createMobileUrl('so', array('sex' => '0', 'age' => '0', 'marry' => '0', 'city' => '')),),
    array('name' => '活动', 'pic' => 'menu7.png', 'link' => $this->createMobileUrl('active'),),
    array('name' => '个人中心', 'pic' => 'menu8.png', 'link' => $this->createMobileUrl('my'),),
);


//会员开始
$type = $_GPC['type'];

//最新
if ($type == "new") {
    $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid and set_close=0 AND upid in (3,4) ORDER BY login_time,uid DESC limit 20", array(':uniacid' => $_W['uniacid']));
//女性会员
} elseif ($type == "girl") {
    $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid and set_close=0 AND upid in (3,4) AND sex=:sex ORDER BY login_time DESC limit 20", array(':uniacid' => $_W['uniacid'], ':sex' => '2'));
//女性会员
} elseif ($type == "boy") {
    $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid and set_close=0 AND upid in (3,4) AND sex=:sex ORDER BY login_time DESC limit 20", array(':uniacid' => $_W['uniacid'], ':sex' => '1'));
//认证会员
} elseif ($type == "real") {
    $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid and set_close=0 AND upid in (3,4) AND realname=:realname ORDER BY uid DESC limit 20", array(':uniacid' => $_W['uniacid'], ':realname' => '2'));
//VIP
} elseif ($type == "vip") {
    $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid and set_close=0 AND upid=:upid ORDER BY login_time DESC limit 20", array(':uniacid' => $_W['uniacid'], ':upid' => '4'));
//其他
} else {
    $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid and set_close=0 AND upid in (3,4) ORDER BY login_time,uid DESC limit 20", array(':uniacid' => $_W['uniacid']));
}
//会员结束
auth();
include $this->template('fengmian');
?>