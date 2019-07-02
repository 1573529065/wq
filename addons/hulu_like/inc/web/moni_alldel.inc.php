<?php

global $_W;

$sham = pdo_fetchall("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND sham=:sham", array(':uniacid' => $_W['uniacid'], ':sham' => '2'));

foreach ($sham as $key => $v) {
    $res1 = pdo_delete('hulu_like_user', array('uniacid' => $_W['uniacid'], 'sham' => '2', 'openid' => $v['openid']));
    $res2 = pdo_delete('hulu_like_member', array('uniacid' => $_W['uniacid'], 'openid' => $v['openid']));
    $res3 = pdo_delete('hulu_like_request', array('uniacid' => $_W['uniacid'], 'openid' => $v['openid']));
    $res4 = pdo_delete('hulu_like_more', array('uniacid' => $_W['uniacid'], 'openid' => $v['openid']));

    if ((!empty($res1)) && (!empty($res2)) && (!empty($res3)) && (!empty($res4))) {

        echo '<h2>' . $v['nickname'] . '删除成功！</h2><br/>';

    }
}


?>