<?php
global $_W, $_GPC;
include 'function.php';
include"check.php";
$make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));
if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $fee = floatval($_GPC['chongzhi_jinbi'] / $make['make_jinbi_bili']);
        if ($fee <= 0) {
            msg('支付错误, 金额小于0', $this->createMobileUrl('chongzhi'), 'error');
        }
        $order_num = date('YmdHis') . substr(implode(NULL, array_map('ord', str_split(substr(uniqid(), 7, 13), 1))), 0, 8);
//===
        $order_old = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_order') . "WHERE uniacid=:uniacid AND order_num=:order_num", array(':uniacid' => $_W['uniacid'], ':order_num' => $_GPC['order_num']));
        if (empty($order_old)) {
            $orderdata = array(
                'uniacid' => $_W['uniacid'],
                'openid' => $_W['openid'],
                'order_pid' => '1',
                'order_type' => '3',
                'order_num' => $order_num,
                'order_money' => $fee,
                'order_starttime' => $_W['timestamp'],
                'order_endtime' => '',
                'order_ip' => $_W['clientip'],
                'order_container' => $_W['container'],
                'order_os' => $_W['os'],
                'order_vip_days' => $_GPC['vip_days'],
                'order_join_id' => '',
            );
            pdo_insert('hulu_like_order', $orderdata);
            $params = array(
                'tid' => $order_num,
                'ordersn' => $order_num,
                'title' => '相亲交友订单支付',
                'fee' => $fee,
                'order_num' => $order_num,
            );
            $this->pay($params);             
          //  header("Location: " . $this->createMobileUrl('pay', array('order_num' => $order_num)));
        }
        //===
    }
} else {
    include $this->template('chongzhi');
}
?>