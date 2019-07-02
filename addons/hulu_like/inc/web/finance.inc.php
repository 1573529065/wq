<?php
global $_W, $_GPC;
if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $msg = '';
        empty($_GPC['nickname']) && $msg .= '用户昵称 ';
        empty($_GPC['avatar']) && $msg .= '用户头像 ';
        empty($_GPC['money']) && $msg .= '订单金额';
        if (!empty($msg)){
            $msg .= '不能为空';
            message($msg);
        }

        $data = array(
            'nickname' => $_GPC['nickname'],
            'avatar' => $_GPC['avatar'],
            'money' => $_GPC['money'],
            'status' => !empty($_GPC['status']) ? $_GPC['status'] : 2,
            'created_at' => date('Y-m-d H:i:s'),
        );
        $res = pdo_insert('hulu_like_finance', $data);
        if (!empty($res)) {
            message('恭喜，操作成功！', $this->createWebUrl('finance'), 'success');
        } else {
            message('抱歉，操作失败！', $this->createWebUrl('finance'), 'error');
        }
    }
} else {
    $pageSize = 8;
    $pageIndex = max(1, intval($_GPC['page']));
    $sql_count = "SELECT count(*) FROM " . tablename('hulu_like_finance');
    $financeList = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_finance') . "ORDER BY id DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize);

    $today_total = pdo_fetch("SELECT SUM(money) as money,count(*) as num FROM" . tablename('hulu_like_finance') ."WHERE DATE_FORMAT(created_at,'%Y-%m-%D')=DATE_FORMAT(CURDATE(),'%Y-%m-%D')");
    $today_success = pdo_fetch("SELECT SUM(money) as money,count(*) as num FROM" . tablename('hulu_like_finance') ."WHERE status = 2 AND DATE_FORMAT(created_at,'%Y-%m-%D')=DATE_FORMAT(CURDATE(),'%Y-%m-%D')");

    $yd_total = pdo_fetch("SELECT SUM(money) as money,count(*) as num FROM" . tablename('hulu_like_finance') ."WHERE DATE_FORMAT(created_at,'%Y-%m-%D')=DATE_FORMAT(CURDATE()-1,'%Y-%m-%D')");
    $yd_success = pdo_fetch("SELECT SUM(money) as money,count(*) as num FROM" . tablename('hulu_like_finance') ."WHERE status = 2 AND DATE_FORMAT(created_at,'%Y-%m-%D')=DATE_FORMAT(CURDATE()-1,'%Y-%m-%D')");

    $seven_total = pdo_fetch("SELECT SUM(money) as money,count(*) as num FROM" . tablename('hulu_like_finance') ."WHERE DATE_SUB(CURDATE(), INTERVAL 7 DAY) <= date(created_at)");
    $seven_success = pdo_fetch("SELECT SUM(money) as money,count(*) as num FROM" . tablename('hulu_like_finance') ."WHERE status = 2 AND DATE_SUB(CURDATE(), INTERVAL 7 DAY) <= date(created_at)");

    $total = pdo_fetchcolumn($sql_count);
    $pagination = pagination($total, $pageIndex, $pageSize);

    include $this->template('web/finance');
}
?>