<?php

global $_W, $_GPC;

include"function.php";
include"check.php";

$type = $_GPC['type'];

if ($_W['ispost']) {
    if (checksubmit('submit')) {


        $fee = floatval($_GPC['money']);
        if ($fee <= 0) {
            msg("支付错误, 金额小于0", $this->createMobileUrl('fengmian'), "error");
            exit();
        }

//打赏
        if ($type == "1") {

            $order_type = "5";
            $order_vip_days = "";
            $order_join_id = "";
            $order_gift_receive = "";
            $order_gift_id = "";
            $order_dashang_receive = $_GPC['receive'];
            $order_talk_id = "";

//赞赏说说
        } elseif ($type == "2") {

            $order_type = "6";
            $order_vip_days = "";
            $order_join_id = "";
            $order_gift_receive = "";
            $order_gift_id = "";
            $order_dashang_receive = "";
            $order_talk_id = $_GPC['talk_id'];
        }




        $order_num = addorder($order_type, $fee, $order_vip_days, $order_join_id, $order_gift_receive, $order_gift_id, $order_dashang_receive, $order_talk_id);

        if (!empty($order_num)) {
            $params = array(
                'tid' => $order_num,
                'ordersn' => $order_num,
                'title' => '相亲交友订单支付',
                'fee' => $fee,
                'order_num' => $order_num,
            );
            $this->pay($params);             
           // header("Location: " . $this->createMobileUrl('pay', array('order_num' => $order_num)));
        } elseif (empty($order_num)) {
            header("Location: " . $_W['siteurl']);
        }
    }
} else {

    if (!in_array($type, array("1", "2"))) {
        msg("请勿提交非法网址！", $this->createMobileUrl('fengmian'), "error");
        exit();
    }




    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_GPC['receive']));
    if (empty($user)) {

        msg("该信息不存在！", $this->createMobileUrl('fengmian'), "error");
        exit();
    }

    $dashang = array(
        array('dashang_money' => '1'),
        array('dashang_money' => '2'),
        array('dashang_money' => '5.2'),
        array('dashang_money' => '13.14'),
        array('dashang_money' => '18.88'),
        array('dashang_money' => '66.66'),
        array('dashang_money' => '99.99'),
        array('dashang_money' => '188.88'),
        array('dashang_money' => '520'),
        array('dashang_money' => '666'),
        array('dashang_money' => '888'),
        array('dashang_money' => '1314'),
    );

    $make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

    include $this->template('dashang');
}
?>