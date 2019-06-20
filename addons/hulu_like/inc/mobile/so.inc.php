<?php

global $_W, $_GPC;
include 'function.php';
$sex = isset($_GPC['sex']) ? $_GPC['sex'] : "0";
$age = isset($_GPC['age']) ? $_GPC['age'] : "0";
$marry = isset($_GPC['marry']) ? $_GPC['marry'] : "0";
$city = isset($_GPC['city']) ? $_GPC['city'] : "";
if ($sex != 0) {
    $sexsql = "AND sex=" . $sex . "";
} elseif ($sex == 0) {
    $sexsql = "";
}
//��������
//18������
$age_18 = $_W['timestamp'] - (18 * 365 * 24 * 3600);
//18-22��
$age_22 = $_W['timestamp'] - (22 * 365 * 24 * 3600);
//23-26��
$age_23 = $_W['timestamp'] - (23 * 365 * 24 * 3600);
$age_26 = $_W['timestamp'] - (26 * 365 * 24 * 3600);
//27-35��
$age_27 = $_W['timestamp'] - (27 * 365 * 24 * 3600);
$age_35 = $_W['timestamp'] - (35 * 365 * 24 * 3600);
//18������
if ($age == 1) {
    $agesql = "AND m.member_birthday > '" . $age_18 . "' ";
//18-22��
} elseif ($age == 2) {
    $agesql = "AND m.member_birthday <='" . $age_18 . "' AND m.member_birthday >'" . $age_22 . "' ";
//23-26��
} elseif ($age == 3) {
    $agesql = "AND m.member_birthday <='" . $age_23 . "' AND m.member_birthday >'" . $age_26 . "' ";
//27-35��
} elseif ($age == 4) {
    $agesql = "AND m.member_birthday <='" . $age_27 . "' AND m.member_birthday >'" . $age_35 . "' ";
//35������
} elseif ($age == 5) {
    $agesql = "AND m.member_birthday <=" . $age_35 . " and m.member_birthday>0";
} elseif ($age == 0) {
    $agesql = "";
}
if ($marry != '0') {
    $marrysql = "AND m.member_marry='" . $marry . "' ";
} elseif ($marry == '0') {
    $marrysql = "";
}
if (!empty($city)) {
    $citydata = (explode("|", $city));
    $city1 = $citydata[0];
    $city2 = $citydata[1];
    $city3 = $citydata[2];
    
    $citysql = "AND m.member_province='" . $city1 . "' ";
    if ($city2 != '不限') {
        $citysql .= " AND m.member_city='" . $city2 . "' ";
    }
    if ($city3 != '不限') {
        $citysql .= " AND m.member_district='" . $city3 . "' ";
    }    
} elseif (empty($city)) {
    $citysql = "";
}

$page = (int) $_GPC['page'];
if ($page == 0) {
    $page = 1;
}
$page_size = 20;
$limit = " limit " . ($page - 1) * $page_size . ',' . $page_size;

$user = "SELECT * FROM " . tablename('hulu_like_user') . " u " .
        "LEFT JOIN " . tablename('hulu_like_member') . " m ON u.openid=m.openid " .
        " WHERE u.uniacid='" . $_W['uniacid'] . "' and u.upid in (3,4) $sexsql $agesql $marrysql $citysql ORDER BY u.uid DESC $limit";

//$user0 = "SELECT * FROM" . tablename('hulu_like_user') . "," . tablename('hulu_like_member') . 
//        " WHERE " . tablename('hulu_like_user') . ".openid=" . tablename('hulu_like_member') . 
//        ".openid  AND " . tablename('hulu_like_user') . ".uniacid='" . $_W['uniacid'] . "' AND upid in (3,4) " . $sexsql . " " . $agesql . " " . $marrysql . "  " . $citysql . " ORDER BY uid DESC $limit";
$user = pdo_fetchall($user);
$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));
load()->func('tpl');

if ($_GPC['getmore']) {
    if ($user) {
        include $this->template('user');
    }
    exit;
} else {
    include $this->template('so');
}
?>