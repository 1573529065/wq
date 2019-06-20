<?php

global $_W, $_GPC;

if ($_W['ispost']) {
    if ($_W['isajax']) {

        if ($_W['container'] == 'wechat') {
            if ($_W['fans']['follow'] == '1') {
                $user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
                $ta = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND uid=:uid", array(':uniacid' => $_W['uniacid'], ':uid' => $_GPC['user_uid']));

                if (!empty($user)) {
                    if (!empty($ta)) {
                        $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

                        if ($user['openid'] != $ta['openid']) {
                            $contact = pdo_fetchall("SELECT * FROM " . tablename('hulu_like_contact') . " WHERE uniacid=:uniacid AND openid=:openid AND contact_openid=:contact_openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid'], ':contact_openid' => $ta['openid']));
                            $member = pdo_fetch("SELECT * FROM" . tablename('hulu_like_member') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $ta['openid']));
                            $contactdata = '微信：' . $member['member_wechat'] . "\n手机：" . $member['member_tel'];

                            
                            if (empty($contact)) {
                                $make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));
                                if ($make['look_user_tel_type'] == 1) {//身份证认证方式
                                    if ($user['realname'] != 2) {
                                        echo '请先进入个人中心进行实名认证';
                                    } else {
                                        $newcontact = array(
                                            'uniacid' => $_W['uniacid'],
                                            'openid' => $_W['openid'],
                                            'contact_openid' => $ta['openid'],
                                            'contact_time' => $_W['timestamp'],
                                            'contact_ip' => $_W['clientip'],
                                            'contact_container' => $_W['container'],
                                            'contact_os' => $_W['os'],
                                        );
                                        pdo_insert('hulu_like_contact', $newcontact);
                                        echo $contactdata;                                        
                                    }

                                } else {
                                    if ($user['upid'] == '4') {
                                        $beginToday = mktime(0, 0, 0, date('m'), date('d'), date('Y'));
                                        $endToday = mktime(0, 0, 0, date('m'), date('d') + 1, date('Y')) - 1;

                                        $contact_today = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_contact') . "WHERE uniacid=:uniacid AND openid=:openid AND contact_time>=" . $beginToday . " AND contact_time<=" . $endToday, array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

                                        if (count($contact_today) < $make['make_vip_contact']) {
                                            $newcontact = array(
                                                'uniacid' => $_W['uniacid'],
                                                'openid' => $_W['openid'],
                                                'contact_openid' => $ta['openid'],
                                                'contact_time' => $_W['timestamp'],
                                                'contact_ip' => $_W['clientip'],
                                                'contact_container' => $_W['container'],
                                                'contact_os' => $_W['os'],
                                            );
                                            pdo_insert('hulu_like_contact', $newcontact);

                                            echo $contactdata;
                                        } else {
                                            echo'VIP会员每天只能查看' . $make['make_vip_contact'] . '位会员联系方式！';
                                        }
                                    } else {
                                        echo 'need_vip';//'查看该会员的联系方式，需要先开通VIP';
                                    }                                    
                                }                           
                                
                            } else {
                                echo $contactdata;
                            }
                        } else {
                            $my = pdo_fetch("SELECT * FROM " . tablename('hulu_like_member') . " WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
                            echo '微信：' . $my['member_wechat'] . "\n手机：" . $my['member_tel'];
                        }
                    } else {
                        echo '该会员不存在';
                    }
                } else {
                    echo'请先注册';
                }
            } else {
                echo'请先关注公众号“' . $_W['account']['account'] . '”';
            }
        } else {
            echo'请在微信客户端打开';
        }
    }
}
?>