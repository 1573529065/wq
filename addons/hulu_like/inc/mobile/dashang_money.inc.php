<?php

global $_W, $_GPC;

include"function.php";
if ($_W['ispost']) {
    if ($_W['isajax']) {

        $type = $_GPC['type'];

        if (!in_array($type, array("1", "2"))) {
            exit();
        }

        $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_GPC['receive']));
        if (empty($user)) {

            exit();
        }


        $fee = floatval($_GPC['money']);
        if ($fee <= 0) {

            $text = array(
                'type' => '1',
                'text' => "",
            );
            echo json_encode($text);
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

            $text = array(
                'type' => '2',
                'text' => $this->createMobileUrl('pay', array('order_num' => $order_num)),
            );
            echo json_encode($text);
        } elseif (empty($order_num)) {
            $text = array(
                'type' => '1',
                'text' => "",
            );
            echo json_encode($text);
        }
    }
}
?>