<?php
global $_W, $_GPC;
if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $sham = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND sham=:sham ORDER BY uid DESC", array(':uniacid' => $_W['uniacid'], ':sham' => '2'));
		
		$moni_sham = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_sham') . "WHERE uniacid=:uniacid ORDER BY sham_id ASC", array(':uniacid' => $_W['uniacid']));
        $sham_num = $_GPC['sham_num'];
        for ($x = 1; $x <= $sham_num; $x++) {
            $openid = 'abcd' . ((count($sham)) + $x);
            $ayear = 24 * 60 * 60 * 365;
            $moniuser = array(
                'uniacid' => $_W['uniacid'],
                'openid' => $openid,
                'upid' => '3',
                'sham' => '2',
                'vip_endtime' => '',
                'realname' => rand(1, 2),
                'sex' => $_GPC['sham_sex'],
                'nickname' => $moni_sham[((count($sham)) + $x - 1)]['sham_nickname'],
                'avatar' => '../addons/hulu_like/public/avatar/' . ((count($sham)) + $x) . '.jpg',
                'address' => '',
                'login_time' => '',
                'login_ip' => $_W['clientip'],
                'login_container' => $_W['container'],
                'login_os' => $_W['os'],
                'reg_time' => $_W['timestamp'],
                'reg_ip' => $_W['clientip'],
            );

            $monimember = array(
                'uniacid' => $_W['uniacid'],
                'openid' => $openid,
                'member_birthday' => $_W['timestamp'] - (rand($_GPC['sham_age_small'] * $ayear, $_GPC['sham_age_big'] * $ayear)),
                'member_height' => rand($_GPC['sham_height_small'], $_GPC['sham_height_big']),
                'member_weight' => rand($_GPC['sham_weight_small'], $_GPC['sham_weight_big']),
                'member_purpose' => rand(1, 5),
                'member_feeling' => rand(1, 3),
                'member_marry' => rand(1, 4),
                'member_wechat' => random(10, false),
                'member_tel' => '',
                'member_province' => '',
                'member_city' => '',
                'member_district' => '',
                'member_content' => $moni_sham[((count($sham)) + $x - 1)]['sham_content'],
            );
            $monirequest = array(
                'uniacid' => $_W['uniacid'],
                'openid' => $openid,
                'request_age_small' => rand(18, 58),
                'request_age_big' => rand(18, 58),
                'request_height_small' => rand(150, 220),
                'request_height_big' => rand(150, 220),
                'request_weight_small' => rand(40, 140),
                'request_weight_big' => rand(40, 140),
                'request_salary' => rand(1, 14),
                'request_education' => rand(1, 11),
                'request_area' => rand(1, 7),
            );
            $monimore = array(
                'uniacid' => $_W['uniacid'],
                'openid' => $openid,
            );
            $res1 = pdo_insert('hulu_like_user', $moniuser);
            $res2 = pdo_insert('hulu_like_member', $monimember);
            $res3 = pdo_insert('hulu_like_request', $monirequest);
            $res4 = pdo_insert('hulu_like_more', $monimore);

            if ((!empty($res1)) && (!empty($res2)) && (!empty($res3)) && (!empty($res4))) {
                echo '<h2>恭喜，第' . $x . '条数据生成成功！</h2><br/>';
            }
        }
    }
}
?>