<?php

global $_W, $_GPC;
include 'function.php';
if ($_W['ispost']) {
    if ($_W['isajax']) {
        if ($_GPC['type'] == '1') {
            if (!empty($_GPC['news_content'])) {
                $make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

//我
                $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));

//我发出的消息
                $my_news = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_news') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));


//与当前聊天对象正在使用中
                $my_liaodou = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_liaodou') . "WHERE uniacid=:uniacid AND openid=:openid AND liaodou_pid=:liaodou_pid AND liaodou_openid=:liaodou_openid AND liaodou_endtime>='" . $_W['timestamp'] . "' ", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid'], ':liaodou_pid' => '2', ':liaodou_openid' => $_GPC['news_openid']));

//未使用
                $liaodou = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_liaodou') . "WHERE uniacid=:uniacid AND openid=:openid AND liaodou_pid=:liaodou_pid AND liaodou_endtime>='" . $_W['timestamp'] . "' ORDER BY liaodou_id ASC", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid'], ':liaodou_pid' => "1"));

//判断VIP是否可以免费聊天，且当前会员是否为VIP
                if (($make['make_vip_freechat'] == "2") && ($user['upid'] == "4")) {
                    $liaodou_result_vip = "1";
                } else {
                    $liaodou_result_vip = "2";
                }

//判断是否有可用的撩豆套餐和已经在使用的撩豆套餐
                if ((!empty($my_liaodou)) || ((empty($my_liaodou)) && (!empty($liaodou)))) {
                    $liaodou_result_liaodou = "1";
                } else {

                    $liaodou_result_liaodou = "2";
                }

//判断有免费的聊天数量
                if (count($my_news) < $make['make_liaotian_free']) {
                    $liaodou_result_num = "1";
                } else {
                    $liaodou_result_num = "2";
                }

//判断会员性别为女性可免费发

                if ($user['sex'] == "2") {
                    $liaodou_result_sex = "1";
                } else {
                    $liaodou_result_sex = "2";
                }

                if (($liaodou_result_vip == "1") || ($liaodou_result_num == "1") || ($liaodou_result_sex == "1") || ($liaodou_result_liaodou == "1")) {
                    if (($liaodou_result_vip == "2") && ($liaodou_result_num == "2") && ($liaodou_result_sex == "2") && ($liaodou_result_liaodou == "1")) {

                        if (empty($my_liaodou)) {
                            $liaodou_id = $liaodou[0]['liaodou_id'];
                            pdo_update("hulu_like_liaodou", array('liaodou_pid' => '2', 'liaodou_openid' => $_GPC['news_openid']), array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid'], 'liaodou_id' => $liaodou_id, 'openid' => $_W['openid']));
                        }
                    }


                    $newsdata = array(
                        'uniacid' => $_W['uniacid'],
                        'news_pid' => '1',
                        'news_type' => $_GPC['news_type'],
                        'openid' => $_W['openid'],
                        'news_openid' => $_GPC['news_openid'],
                        'news_content' => $_GPC['news_content'],
                        'news_time' => $_W['timestamp'],
                        'news_ip' => $_W['clientip'],
                        'news_container' => $_W['container'],
                        'news_os' => $_W['os'],
                    );
                    $res = pdo_insert('hulu_like_news', $newsdata);

                    if (!empty($res)) {
                        $beginToday = mktime(0, 0, 0, date('m'), date('d'), date('Y'));
                        $endToday = mktime(0, 0, 0, date('m'), date('d') + 1, date('Y')) - 1;
                        $oldnews = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_news') . "WHERE uniacid=:uniacid AND openid=:openid AND news_openid=:news_openid AND news_time>=" . $beginToday . " AND news_time<=" . $endToday, array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid'], ':news_openid' => $_GPC['news_openid']));
//返回数据开始
                        $fanhui = array(
                            'type' => '1',
                            'content' => '可以发布',
                        );
                        echo (json_encode($fanhui));
//返回数据结束
//echo json_encode($oldnews);
//如果当天没有与该会员有过聊天记录
//if((count($oldnews))<='2'){
                        load()->classs('weixin.account');
                        $accObj = WeixinAccount::create($_W['uniacid']);

                        $muban = pdo_fetch("SELECT * FROM" . tablename('hulu_like_muban') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

                        $touser = $_GPC['news_openid'];
                        $tpl_id_short = $muban['muban_send_news'];
                        $postdata = array(
                            'first' => array('value' => '你好，你有一条用户咨询待解决！', color => '#FF0000',),
                            'keyword1' => array('value' => $user['nickname'], color => '#000',),
                            'keyword2' => array('value' => $_GPC['news_content'], color => '#0098F0',),
                            'remark' => array('value' => "咨询时间：" . date('Y-m-d H:i:s', $_W['timestamp']) . "\n\n点击处理咨询", color => '#999',),
                        );
                        $url = $_W['siteroot'] . 'app/' . $this->createMobileUrl('chat');
                        $topcolor = "#FF6633";
                        $accObj->sendTplNotice($touser, $tpl_id_short, $postdata, $url, $topcolor);
                    }
                } else {
                    $fanhui = array(
                        'type' => '2',
                        'content' => '不能发布了',
                    );
                    echo json_encode($fanhui);
                }
            }
        }
    }
}
?>