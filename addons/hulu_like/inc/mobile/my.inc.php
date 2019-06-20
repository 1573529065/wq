<?php
global $_W, $_GPC;
include 'function.php';
check();
include "check.php";
$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

$my_menu = array(
    array('name' => '基本资料', 'pic' => 'e1.png', 'link' => 'info',),
    //array('name' => '择偶标准', 'pic' => 'e2.png', 'link' => 'request',),
    array('name' => '上传照片', 'pic' => 'e3.png', 'link' => 'picture',),
    array('name' => '上传视频', 'pic' => 'e2.png', 'link' => 'picture_video',),
    array('name' => '实名认证', 'pic' => 'e4.png', 'link' => 'real',),
    array('name' => '提现资料', 'pic' => 'e5.png', 'link' => 'tixian_info', 'bold' => '1',),
    array('name' => '升级VIP', 'pic' => 'e6.png', 'link' => 'vip',),
    array('name' => '充值' . $make['make_jinbi_name'], 'pic' => 'e7.png', 'link' => 'chongzhi',),
    array('name' => '收到的礼物', 'pic' => 'e8.png', 'link' => 'present', 'bold' => '1',),
    array('name' => '资金明细', 'pic' => 'e9.png', 'link' => 'money',),
    array('name' => '我的订单', 'pic' => 'e10.png', 'link' => 'order',),
    array('name' => '推广码', 'pic' => 'e11.png', 'link' => 'tuiguang',),
    array('name' => '推广记录', 'pic' => 'e12.png', 'link' => 'share', 'bold' => '1',),
);

$user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
if (($user['upid'] == "4") && ($user['vip_endtime'] <= $_W['timestamp'])) {
    pdo_update("hulu_like_user", array('upid' => '3'), array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));
}

$user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

$member = pdo_fetch("SELECT * FROM" . tablename('hulu_like_member') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
//余额开始
$moneydata = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_money') . "WHERE uniacid=:uniacid AND openid=:openid AND money_pid in (2,3) AND money_state in (2,3,4)", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

foreach ($moneydata as $key => $v) {
    $money_money += $v['money_money'];
}
$money_money = round($money_money, 4);

$tixiandata = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_tixian') . "WHERE uniacid=:uniacid AND openid=:openid AND money_pid in (2,3) AND money_state in (2,3,4)", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
foreach ($tixiandata as $key => $vo) {
    $tixian_money += $vo['money_money'];
}
$tixian_money = round($tixian_money, 4);

$money = $money_money - $tixian_money;
//余额结束
//访问我的
$visit = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_viewer') . "WHERE uniacid=:uniacid AND viewer_openid=:viewer_openid", array(':uniacid' => $_W['uniacid'], ':viewer_openid' => $_W['openid']));
$visit = count($visit);
//暗恋我的
$like = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_like') . "WHERE uniacid=:uniacid AND like_openid=:like_openid", array(':uniacid' => $_W['uniacid'], ':like_openid' => $_W['openid']));
$like = count($like);

include $this->template('my');
?>