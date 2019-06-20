<?php

global $_W, $_GPC;

include 'function.php';
include "check.php";
$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));
$chat_num_replace = $make['chat_num_replace'];
if ($_W['ispost']) {
    //刷新消息开始
    if ($_W['isajax']) {

        $news = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_news') . "WHERE uniacid=:uniacid AND ((openid='" . $_W['openid'] . "' AND news_openid='" . $_GPC['openid'] . "') OR (openid='" . $_GPC['openid'] . "' AND news_openid='" . $_W['openid'] . "')) ORDER BY news_id ASC", array('uniacid' => $_W['uniacid']));

        $weidu = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_news') . "WHERE uniacid=:uniacid AND openid=:openid AND news_openid=:news_openid AND news_pid=:news_pid", array(':uniacid' => $_W['uniacid'], ':openid' => $_GPC['openid'], ':news_openid' => $_W['openid'], ':news_pid' => '1'));

        foreach ($weidu as $key => $weidu) {
            pdo_update('hulu_like_news', array('news_pid' => '2'), array('uniacid' => $_W['uniacid'], 'news_id' => $weidu['news_id']));
        }

        foreach ($news as $key => $news) {
            include $this->template('news_list');
        }
    }
//刷新消息结束
} else {

    if (!empty($_W['openid'])) {
        if (!empty($_GPC['openid'])) {
            if ($_W['openid'] != $_GPC['openid']) {
                $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

                if ($user['upid'] != '4') {
                    message('请升级为VIP免费畅聊!', $this->createMobileUrl('vip'), 'error');
                }
                $member = pdo_fetch("SELECT * FROM" . tablename('hulu_like_member') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $user['openid']));

                if (($member['member_birthday']) && ($member['member_height']) && ($member['member_weight']) && ($member['member_wechat'])) {

                    $old_liaodou = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_liaodou') . "WHERE uniacid=:uniacid AND openid=:openid AND liaodou_pid=:liaodou_pid AND liaodou_endtime<='" . $_W['timestamp'] . "' ", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid'], ':liaodou_pid' => '2'));

                    foreach ($old_liaodou as $key => $v) {
                        pdo_update("hulu_like_liaodou", array('liaodou_pid' => '3'), array('uniacid' => $_W['uniacid'], 'liaodou_id' => $v['liaodou_id'], 'openid' => $_W['openid']));
                    }

                    $news = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_news') . "WHERE uniacid=:uniacid AND ((openid='" . $_W['openid'] . "' AND news_openid='" . $_GPC['openid'] . "') OR (openid='" . $_GPC['openid'] . "' AND news_openid='" . $_W['openid'] . "')) ORDER BY news_id ASC", array('uniacid' => $_W['uniacid']));
                    include $this->template('liaotian');
                } else {
                    message('请先完善资料！', $this->createMobileUrl('info'), 'error');
                }
            } else {
                message('不能与自己对话！', $this->createMobileUrl('chat'), 'error');
            }
        } else {
            message('请选择发送消息的对象！', $this->createMobileUrl('chat'), 'error');
        }
    } else {
        message('请在微信客户端打开', $this->createMobileUrl('fengmian'), 'error');
    }
}
?>