<?php

global $_W, $_GPC;

include'function.php';
include"check.php";

$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

$active = pdo_fetch("SELECT * FROM" . tablename('hulu_like_active') . "WHERE uniacid=:uniacid AND active_id=:active_id", array(':uniacid' => $_W['uniacid'], ':active_id' => $_GPC['active_id']));

if (empty($active)) {
    header("Location: " . $this->createMobileUrl('active'));
    exit();
}

$user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));
$member = pdo_fetch("SELECT * FROM" . tablename('hulu_like_member') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_W['openid']));


//$order_num=date('YmdHis').substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);


if ($_W['ispost']) {
    if (checksubmit('submit')) {
        //提交开始

        $joindata = array(
            'uniacid' => $_W['uniacid'],
            'join_pid' => '2',
            'openid' => $_W['openid'],
            'active_id' => $_GPC['active_id'],
            'join_sex' => $user['sex'],
            'join_name' => $_GPC['join_name'],
            'join_wechat' => $_GPC['join_wechat'],
            'join_tel' => $_GPC['join_tel'],
            'join_time' => $_W['timestamp'],
            'join_ip' => $_W['clientip'],
            'join_container' => $_W['container'],
            'join_os' => $_W['os'],
        );
        $res = pdo_insert('hulu_like_join', $joindata);

        if (!empty($res)) {
            $join_id = pdo_insertId();

            if ($active['active_money'] == "0") {
                pdo_update('hulu_like_join', array('join_pid' => '3'), array('uniacid' => $_W['uniacid'], 'join_id' => $join_id, 'active_id' => $active['active_id']));

                msg('恭喜，报名成功！', $this->createMobileUrl('active_view', array('active_id' => $_GPC['active_id'])), 'success');
            } elseif ($active['active_money'] != "0") {
                //订单开始
                $fee = floatval($active['active_money'] * $make['make_active_proportion']);
                $order_type = "2";
                $order_vip_days = "";
                $order_join_id = $join_id;
                $order_gift_receive = "";
                $order_gift_id = "";
                $order_dashang_receive = "";
                $order_talk_id = "";
                $order_num = addorder($order_type, $fee, $order_vip_days, $order_join_id, $order_gift_receive, $order_gift_id, $order_dashang_receive, $order_talk_id);
                //订单结束

                $params = array(
                    'tid' => $order_num,
                    'ordersn' => $order_num,
                    'title' => '相亲交友订单支付',
                    'fee' => $fee,
                    'order_num' => $order_num,
                );
                $this->pay($params); 
               // header("Location: " . $this->createMobileUrl('pay', array('order_num' => $order_num)));
            }
        } else {
            msg('抱歉，报名失败！', $this->createMobileUrl('active_view', array('active_id' => $_GPC['active_id'])), 'error');
        }

//提交结束
    }
} else {

    $join = pdo_fetch("SELECT * FROM" . tablename('hulu_like_join') . "WHERE uniacid=:uniacid AND active_id=:active_id AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':active_id' => $_GPC['active_id'], ':openid' => $_W['openid']));


    $joindata = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_join') . "WHERE uniacid=:uniacid AND active_id=:active_id AND join_sex=:join_sex AND join_pid=:join_pid", array(':uniacid' => $_W['uniacid'], ':active_id' => $_GPC['active_id'], ':join_sex' => $user['sex'], ":join_pid" => "3"));

    $active = pdo_fetch("SELECT * FROM" . tablename('hulu_like_active') . "WHERE uniacid=:uniacid AND active_id=:active_id", array(':uniacid' => $_W['uniacid'], ':active_id' => $_GPC['active_id']));


    if ((empty($join)) || ($join['join_pid'] == '2')) {
        if (($user['sex'] == 1) || ($user['sex'] == '2')) {
            if ($join['join_pid'] != 2) {


                if ($user['sex'] == '1') {
                    $active_people = $active['active_boy'];
                } elseif ($user['sex'] == '2') {
                    $active_people = $active['active_girl'];
                }


                if (count($joindata) < $active_people) {

                    include $this->template('active_join');
                } else {
                    msg('名额已满！', $this->createMobileUrl('active_view', array('active_id' => $_GPC['active_id'])), 'error');
                }
            } else {

                //订单开始
                $fee = floatval($active['active_money'] * $make['make_active_proportion']);
                $order_type = "2";
                $order_vip_days = "";
                $order_join_id = $join['join_id'];
                $order_gift_receive = "";
                $order_gift_id = "";
                $order_dashang_receive = "";
                $order_talk_id = "";
                $order_num = addorder($order_type, $fee, $order_vip_days, $order_join_id, $order_gift_receive, $order_gift_id, $order_dashang_receive, $order_talk_id);
                //订单结束
                $params = array(
                    'tid' => $order_num,
                    'ordersn' => $order_num,
                    'title' => '相亲交友订单支付',
                    'fee' => $fee,
                    'order_num' => $order_num,
                );
                $this->pay($params); 
                //header("Location: " . $this->createMobileUrl('pay', array('order_num' => $order_num)));
            }
        } else {
            msg('请先完善基本资料！', $this->createMobileUrl('info'), 'error');
        }
    } else {
        msg('您已经报名此活动！', $this->createMobileUrl('active_view', array('active_id' => $_GPC['active_id'])), 'error');
    }
}
?>