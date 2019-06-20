<?php
global $_W, $_GPC;
if ('chgsex' == $_GPC['op']) {
    pdo_update('hulu_like_user', array('sex' => $_GPC['sex']), array('uid' => (int)$_GPC['id']));
    if ($_GPC['sex'] == 2) {
        echo '女';
    } else {
        echo '男';
    }
    exit;
}
include 'function.php';
$get_page_0 = 0;
$get_page_1 = 0;
$get_page_2 = 0;
$get_page_3 = 0;
$get_page_4 = 0;
$pageSize = 15;
$hit_tab = ($_SESSION['set_page_param'] > 0 ? $_SESSION['set_page_param'] : 0);
${'get_page_'. $hit_tab} = intval($_GPC['page']);

$where = '';
$keywords = $_GPC['nickname'];
if ($keywords != '') {
    $where .= "AND nickname like '%" . $keywords . "%'";
}
$pageIndex = max(1, $get_page_0);
$sql_count = "SELECT count(*) FROM " . tablename('hulu_like_user') . " WHERE uniacid='".$_W['uniacid']."' AND sham=1 $where";
$user = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND sham=1 $where ORDER BY uid DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
$total = pdo_fetchcolumn($sql_count);
$pagination_0 = pagination($total, $pageIndex, $pageSize);

for ($i=1; $i <= 4; $i++) {
    $sql_con = '';
    if ($i == 4) {
        $sql_con .= 'and sham=1 and upid=4';
    } else if ($i == 3) {
        $sql_con .= 'and sham=1 and upid=3';
    } else if ($i == 2) {
        $sql_con .= 'and sham=1 and upid=2';
    } else if ($i == 1) {
        $sql_con .= 'and sham=1 and upid=1';
    }
    $pageIndex = max(1, ${'get_page_'.$i});
    $sql_count = "SELECT count(*) FROM " . tablename('hulu_like_user') . " WHERE uniacid='".$_W['uniacid']."' $sql_con $where";
    ${'user'.$i} = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid $sql_con $where ORDER BY uid DESC LIMIT " . ($pageIndex - 1) * $pageSize . "," . $pageSize, array(':uniacid' => $_W['uniacid']));
    $total = pdo_fetchcolumn($sql_count);
    ${'pagination_' .$i} = pagination($total, $pageIndex, $pageSize);    
}

include $this->template('web/user');

?>