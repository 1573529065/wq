<?php

global $_W, $_GPC;

include 'function.php';
include"check.php";

$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

if ($_W['ispost']) {
    if (checksubmit('submit')) {

        if ($_GPC['vip_days'] == '31') {
            $order_money = $make['make_vip_month'];
        } elseif ($_GPC['vip_days'] == '92') {
            $order_money = $make['make_vip_quarter'];
        } elseif ($_GPC['vip_days'] == '365') {
            $order_money = $make['make_vip_year'];
        }

        $fee = floatval($order_money);
        if ($fee <= 0) {
            msg('支付错误, 金额小于0', $this->createMobileUrl('vip'), 'error');
        }

        //订单开始
        $order_type = "1";
        $order_vip_days = $_GPC['vip_days'];
        $order_join_id = "";
        $order_gift_receive = "";
        $order_gift_id = "";
        $order_dashang_receive = "";
        $order_talk_id = "";
        
        $order_num = addorder($order_type, $fee, $order_vip_days, $order_join_id, $order_gift_receive, $order_gift_id, $order_dashang_receive, $order_talk_id);
        //订单结束
        $params = array(
                'tid' => $order_num, 
                'ordersn' => $order_num,  
                'title' => '相亲交友VIP充值',
                'fee' => $fee, 
                'order_num' => $order_num,
        );    
        $this->pay($params); 
        //header("Location: " . $this->createMobileUrl('pay', array('order_num' => $order_num)));
    } else {
        include $this->template('vip');
    }
} else {

    include $this->template('vip');
}

?>