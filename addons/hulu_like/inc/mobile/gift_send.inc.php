<?php

global $_W, $_GPC;


$gift = pdo_fetch("SELECT * FROM" . tablename('hulu_like_gift') . "WHERE uniacid=:uniacid AND gift_id=:gift_id", array(':uniacid' => $_W['uniacid'], ':gift_id' => $_GPC['gift_id']));

$receive = $_GPC['receive'];
if (empty($gift)) {
    msg('抱歉，该礼物不存在！', $this->createMobileUrl('gift', array('receive' => $receive)), 'error');
    exit();
}

$order_money = floatval($gift['gift_money']);

if ($order_money <= 0) {
    msg('支付错误, 金额小于0', $this->createMobileUrl('gift', array('receive' => $receive)), 'error');
    exit();
}

$order_type = "4";
$order_gift_receive = $_GPC['receive'];
$order_gift_id = $gift['gift_id'];


$order_num = add_order($order_type, $order_money, $order_vip_days, $order_join_id, $order_gift_receive, $order_gift_id);
$params = array(
    'tid' => $order_num,
    'ordersn' => $order_num,
    'title' => '相亲交友订单支付',
    'fee' => $order_money,
    'order_num' => $order_num,
);
$this->pay($params); 
//header("Location: " . $this->createMobileUrl('pay', array('order_num' => $order_num)));

function add_order($order_type, $order_money, $order_vip_days, $order_join_id, $order_gift_receive, $order_gift_id) {

    global $_W;
    $order_num = date('YmdHis') . substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);

//===
    $order_old = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_order') . "WHERE uniacid=:uniacid AND order_num=:order_num", array(':uniacid' => $_W['uniacid'], ':order_num' => $_GPC['order_num']));

    if (empty($order_old)) {

        $orderdata = array(
            'uniacid' => $_W['uniacid'],
            'openid' => $_W['openid'],
            'order_pid' => '1',
            'order_type' => $order_type,
            'order_num' => $order_num,
            'order_money' => $order_money,
            'order_starttime' => $_W['timestamp'],
            'order_endtime' => '',
            'order_ip' => $_W['clientip'],
            'order_container' => $_W['container'],
            'order_os' => $_W['os'],
            'order_vip_days' => $order_vip_days,
            'order_join_id' => $order_join_id,
            'order_gift_receive' => $order_gift_receive,
            'order_gift_id' => $order_gift_id,
        );
        pdo_insert('hulu_like_order', $orderdata);
        return $order_num;
    }
    //===
}

?>