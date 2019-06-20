<?php
function shouquan($url, $code, $do, $share) {
    global $_W;
    $make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

    $key = $_W['account']['key'];
    $secret = $_W['account']['secret'];

    $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));



//推广开始
    if ($do == 'my') {
        if (!empty($share)) {

            $share_user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $share));
            if (!empty($share_user)) {
                $user_shangji = $share;
            } elseif (empty($share_user)) {
                $user_shangji = "";
            }
        }
    }
//推广结束

    if (empty($user)) {

        //如果用户已经关注
        if ($_W['fans']['follow'] == '1') {
            //增加用户数据


            $userdata = array(
                //
                'uniacid' => $_W['uniacid'],
                'openid' => $_W['openid'],
                'upid' => $make['make_user_pid'],
                'sham' => '1',
                'sex' => $_W['fans']['tag']['sex'],
                'nickname' => $_W['fans']['nickname'],
                'avatar' => $_W['fans']['tag']['avatar'],
                'user_shangji' => $user_shangji,
                'login_time' => $_W['timestamp'],
                'login_ip' => $_W['clientip'],
                'login_container' => $_W['container'],
                'login_os' => $_W['os'],
                'reg_time' => $_W['timestamp'],
                'reg_ip' => $_W['clientip'],
                    //
            );
            pdo_insert('hulu_like_user', $userdata);
//
            $newdata = array(
                'uniacid' => $_W['uniacid'],
                'openid' => $_W['openid'],
            );
            pdo_insert('hulu_like_member', $newdata);
            pdo_insert('hulu_like_request', $newdata);
            pdo_insert('hulu_like_more', $newdata);
//
//增加推广记录开始
            if (!empty($user_shangji)) {
                $sharedata = array(
                    'uniacid' => $_W['uniacid'],
                    'openid' => $user_shangji,
                    'share_openid' => $_W['openid'],
                    'share_time' => $_W['timestamp'],
                    'share_ip' => $_W['clientip'],
                    'share_container' => $_W['container'],
                    'share_os' => $_W['os'],
                );
                pdo_insert('hulu_like_share', $sharedata);
            }
//增加推广记录结束
        } else {
            if ($_SESSION['nowuser_apptype'] != 'in_app') {
                if (empty($code)) {
                    $url = urlencode($url);
                    $uri = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" . $key . "&redirect_uri=" . $url . "&response_type=code&scope=snsapi_userinfo&state=STATE&connect_redirect=1#wechat_redirect";
                    header("Location: " . $uri);
                } elseif (!empty($code)) {

                    $url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" . $key . "&secret=" . $secret . "&code=" . $code . "&grant_type=authorization_code ";

                    $data = json_decode(file_get_contents($url), true);

                    $access_token = $data['access_token'];
                    $openid = $data['openid'];
                    $userinfo = "https://api.weixin.qq.com/sns/userinfo?access_token=" . $access_token . "&openid=" . $openid . "&lang=zh_CN ";

                    $data = json_decode(file_get_contents($userinfo), true);

    //return $data;
                    $userdata = array(
                        'uniacid' => $_W['uniacid'],
                        'openid' => $_W['openid'],
                        'upid' => $make['make_user_pid'],
                        'sham' => '1',
                        'sex' => $data['sex'],
                        'nickname' => $data['nickname'],
                        'avatar' => $data['headimgurl'],
                        'user_shangji' => $user_shangji,
                        'login_time' => $_W['timestamp'],
                        'login_ip' => $_W['clientip'],
                        'login_container' => $_W['container'],
                        'login_os' => $_W['os'],
                        'reg_time' => $_W['timestamp'],
                        'reg_ip' => $_W['clientip'],
                    );
                    pdo_insert('hulu_like_user', $userdata);
    //
                    $newdata = array(
                        'uniacid' => $_W['uniacid'],
                        'openid' => $_W['openid'],
                    );
                    pdo_insert('hulu_like_member', $newdata);
                    pdo_insert('hulu_like_request', $newdata);
                    pdo_insert('hulu_like_more', $newdata);
    //
    //增加推广记录开始
                    if (!empty($user_shangji)) {
                        $sharedata = array(
                            'uniacid' => $_W['uniacid'],
                            'openid' => $user_shangji,
                            'share_openid' => $_W['openid'],
                            'share_time' => $_W['timestamp'],
                            'share_ip' => $_W['clientip'],
                            'share_container' => $_W['container'],
                            'share_os' => $_W['os'],
                        );
                        pdo_insert('hulu_like_share', $sharedata);
                    }
    //增加推广记录结束
                }                
            }
                
        }
    } else {

        $newuser = array(
            'login_time' => $_W['timestamp'],
            'login_ip' => $_W['clientip'],
            'login_container' => $_W['container'],
            'login_os' => $_W['os'],
			'session_id'=>session_id(),
        );
        pdo_update('hulu_like_user', $newuser, array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));
    }
}

?>