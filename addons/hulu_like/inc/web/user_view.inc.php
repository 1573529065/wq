<?php
global $_W,$_GPC;
include 'function.php';


if ($_W['isajax']) {
    $openid = $_GPC['openid'];
    $chk_v = (int)$_GPC['chk_v'];
    $uid = (int)$_GPC['uid'];
    $res2 = pdo_update('hulu_like_user', array('realname' => $chk_v), array('uniacid' => $_W['uniacid'], 'uid' => $uid, 'openid' => $openid)); 
    if ($chk_v == 2) {//通过
        $res1 = pdo_update('hulu_like_more', array('more_real_tel_pid' => '2'), array('uniacid' => $_W['uniacid'], 'openid' => $openid));
    } else {//4 拒绝
        $res1 = pdo_update('hulu_like_more', array('more_real_tel_pid' => '1'), array('uniacid' => $_W['uniacid'], 'openid' => $openid));
    }
    exit;
}
//会员基本信息
$user=pdo_fetch("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_GPC['openid']));

//会员详细信息
$member=pdo_fetch("SELECT * FROM".tablename('hulu_like_member')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_GPC['openid']));

//会员择偶要求
$request=pdo_fetch("SELECT * FROM".tablename('hulu_like_request')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_GPC['openid']));

//会员更多信息
$more=pdo_fetch("SELECT * FROM".tablename('hulu_like_more')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_GPC['openid']));

//会员照片
$picture=pdo_fetchall("SELECT * FROM".tablename('hulu_like_picture')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_GPC['openid']));

$picture_uid = pdo_fetchall("SELECT * FROM " . tablename('hulu_like_picture') . " WHERE uniacid=:uniacid AND openid=:openid AND picture_type='userid' ORDER BY picture_id DESC", array(':uniacid' => $_W['uniacid'], ':openid' => $_GPC['openid']));

//会员订单
$order=pdo_fetchall("SELECT * FROM".tablename('hulu_like_order')."WHERE uniacid=:uniacid AND openid=:openid ORDER BY order_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_GPC['openid']));

//会员查看联系方式
$contact=pdo_fetchall("SELECT * FROM".tablename('hulu_like_contact')."WHERE uniacid=:uniacid AND openid=:openid ORDER BY contact_id DESC",array(':uniacid'=>$_W['uniacid'],':openid'=>$_GPC['openid']));



include $this->template('web/user_view');
?>