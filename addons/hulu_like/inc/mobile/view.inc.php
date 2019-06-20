<?php

global $_W, $_GPC;
include 'function.php';
check();
$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

$user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND uid=:uid AND upid in (2,3,4)", array(':uniacid' => $_W['uniacid'], ':uid' => $_GPC['vid']));
if (empty($user)) {
    msg("该会员不存在或已被拉黑！", $this->createMobileUrl('fengmian'), 'error');
    exit();
}

$user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND uid=:uid", array(':uniacid' => $_W['uniacid'], ':uid' => $_GPC['vid']));

$member = pdo_fetch("SELECT * FROM" . tablename('hulu_like_member') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $user['openid']));

$request = pdo_fetch("SELECT * FROM" . tablename('hulu_like_request') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $user['openid']));


$picture = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_picture') . "WHERE uniacid=:uniacid AND openid=:openid AND picture_type=:picture_type AND picture_pid=:picture_pid ORDER BY picture_id DESC", array(':uniacid' => $_W['uniacid'], ':openid' => $user['openid'], ':picture_type' => 'show', ':picture_pid' => '3'));

$picture_num = count($picture);
$picture_page = (array_chunk($picture, 4));
$picture_video = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_picture_video') . "WHERE uniacid=:uniacid AND openid=:openid AND picture_type=:picture_type AND picture_pid=:picture_pid ORDER BY picture_id DESC", array(':uniacid' => $_W['uniacid'], ':openid' => $user['openid'], ':picture_type' => 'show', ':picture_pid' => '3'));

$picture_num_video = count($picture_video);
$picture_page_video = (array_chunk($picture_video, 4));

$purposedata = purposedata();
$feelingdata = feelingdata();
$marrydata = marrydata();
$salarydata = salarydata();
$educationdata = educationdata();
$areadata = areadata();
$housedata = housedata();
$careerdata = careerdata();

//增加访问记录开始
if ((!empty($_W['openid'])) && ($_W['openid'] != $user['openid'])) {

    $visit = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_viewer') . "WHERE uniacid=:uniacid AND openid=:openid AND viewer_openid=:viewer_openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid'], ':viewer_openid' => $user['openid']));

    if (empty($visit)) {
        $viewerdata = array(
            'uniacid' => $_W['uniacid'],
            'openid' => $_W['openid'],
            'viewer_openid' => $user['openid'],
            'viewer_time' => $_W['timestamp'],
            'viewer_ip' => $_W['clientip'],
            'viewer_container' => $_W['container'],
            'viewer_os' => $_W['os'],
        );
        pdo_insert("hulu_like_viewer", $viewerdata);
    } elseif (!empty($visit)) {
        $viewerdata = array(
            'viewer_time' => $_W['timestamp'],
            'viewer_ip' => $_W['clientip'],
            'viewer_container' => $_W['container'],
            'viewer_os' => $_W['os'],
        );
        pdo_update("hulu_like_viewer", $viewerdata, array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid'], 'viewer_openid' => $user['openid']));
    }
}
//增加访问记录结束

$like = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_like') . "WHERE uniacid=:uniacid AND openid=:openid AND like_openid=:like_openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid'], ':like_openid' => $user['openid']));

$present = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_present') . "WHERE uniacid=:uniacid AND openid=:openid ORDER BY present_id DESC", array(':uniacid' => $_W['uniacid'], ':openid' => $user['openid']));

foreach ($present as $key => $present) {
    $presentdata[] = pdo_fetch("SELECT * FROM" . tablename('hulu_like_gift') . "WHERE uniacid=:uniacid AND gift_id=:gift_id ORDER BY gift_id DESC", array(':uniacid' => $_W['uniacid'], ':gift_id' => $present['gift_id']));
}


$present_page = (array_chunk($presentdata, 4));
$present_num = count($presentdata);

auth();
include $this->template('view');
?>