<?php

global $_W, $_GPC;

include 'function.php';
include"check.php";

$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

$user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));


if ($_W['ispost']) {
    if (checksubmit('submit')) {

        $taocan = pdo_fetch("SELECT * FROM" . tablename('hulu_like_taocan') . "WHERE uniacid=:uniacid AND taocan_id=:taocan_id AND taocan_pid=:taocan_pid", array(':uniacid' => $_W['uniacid'], ':taocan_id' => $_GPC['taocan_id'], ':taocan_pid' => "1"));

        if (empty($taocan)) {
            msg("抱歉，此套餐不存在！", $this->createMobileUrl("liaotian", array('openid' => $_GPC['openid'])), "error");
            exit();
        }

        $chongzhi = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_chongzhi') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
        foreach ($chongzhi as $key => $v) {
            $jinbi+=$v['chongzhi_jinbi'];
        }

        if ($user['user_jinbi'] >= $taocan['taocan_liaotian_jinbi']) {
            $xiaofeidata = array(
                'uniacid' => $_W['uniacid'],
                'openid' => $_W['openid'],
                'chongzhi_type' => '2',
                'chongzhi_jinbi' => -(abs($taocan['taocan_liaotian_jinbi'])),
                'chongzhi_time' => $_W['timestamp'],
                'chongzhi_ip' => $_W['clientip'],
                'chongzhi_container' => $_W['container'],
                'chongzhi_os' => $_W['os'],
            );
            pdo_insert('hulu_like_chongzhi', $xiaofeidata);

            $user_liaodou_endtime = ($_W['timestamp'] + ($taocan['taocan_liaotian_time'] * 24 * 3600));

            //
            $liaodoudata = array(
                'uniacid' => $_W['uniacid'],
                'openid' => $_W['openid'],
                'liaodou_openid' => "",
                'liaodou_pid' => '1',
                'liaodou_endtime' => $user_liaodou_endtime,
                'liaodou_time' => $_W['timestamp'],
                'liaodou_ip' => $_W['clientip'],
                'liaodou_container' => $_W['container'],
                'liaodou_os' => $_W['os'],
            );
            for ($i = 1; $i <= $taocan['taocan_liaotian_person']; $i++) {
                pdo_insert('hulu_like_liaodou', $liaodoudata);
            }
            //

            $user_new = array(
                'user_jinbi' => $user['user_jinbi'] - $taocan['taocan_liaotian_jinbi'],
                'user_liaodou_if' => '2',
                'user_liaodou_endtime' => $user_liaodou_endtime,
            );

            $res = pdo_update('hulu_like_user', $user_new, array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));

            if (!empty($res)) {
                msg('恭喜，您在' . date('Ymd H:i', $user_liaodou_endtime) . '之前可任选' . $taocan['taocan_liaotian_person'] . '位异性深入沟通了解！', $this->createMobileUrl('liaotian', array('openid' => $_GPC['openid'])), 'success');
            } else {
                msg('抱歉，操作失败，请重试！', $this->createMobileUrl('liaotian', array('openid' => $_GPC['openid'])), 'error');
            }
        } elseif ($user['user_jinbi'] < $taocan['taocan_liaotian_jinbi']) {
            //echo"金币不足";
            msg('账户' . $make['make_jinbi_name'] . '必须大于' . $taocan['taocan_liaotian_jinbi'] . '，请先充值！', $this->createMobileUrl('chongzhi'), 'error');
        }
    }
} else {

    $taocan = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_taocan') . "WHERE uniacid=:uniacid AND taocan_pid=:taocan_pid ORDER BY taocan_did ASC", array(':uniacid' => $_W['uniacid'], ':taocan_pid' => "1"));


    include $this->template("liaodou");
}
?>