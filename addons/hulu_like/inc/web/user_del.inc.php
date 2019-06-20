<?php
global $_W, $_GPC;
if (!empty($_GPC['openid'])) {
    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_GPC['openid']));
    if (!empty($user)) {
        $res1 = pdo_delete('hulu_like_user', array('uniacid' => $_W['uniacid'], 'openid' => $_GPC['openid']));
        $res2 = pdo_delete('hulu_like_member', array('uniacid' => $_W['uniacid'], 'openid' => $_GPC['openid']));
        $res3 = pdo_delete('hulu_like_request', array('uniacid' => $_W['uniacid'], 'openid' => $_GPC['openid']));
        $res4 = pdo_delete('hulu_like_more', array('uniacid' => $_W['uniacid'], 'openid' => $_GPC['openid']));

        if ((!empty($res1)) && (!empty($res2)) && (!empty($res3)) && (!empty($res4))) {
            message('恭喜！删除成功！', $this->createWebUrl('user'), 'success');
        } else {
            message('抱歉！删除失败！', $this->createWebUrl('user'), 'error');
        }
    } else {
        message('抱歉！您要删除的信息不存在！', $this->createWebUrl('user'), 'error');
    }
} else {
    message('警告！请勿提交非法网址！', $this->createWebUrl('user'), 'error');
}
?>