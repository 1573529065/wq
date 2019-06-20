<?php

global $_W, $_GPC;
if (!empty($_GPC['openid'])) {

    $user = pdo_fetch("SELECT * FROM" . tablename('hulu_like_user') . "WHERE uniacid=:uniacid AND openid=:openid", array(':uniacid' => $_W['uniacid'], ':openid' => $_GPC['openid']));
    if (!empty($user)) {
        if ($user['uniacid'] == $_W['uniacid']) {
            if ($_GPC['type'] == 'kefu') {
                $res = pdo_update('hulu_like_user', array('kefu_if' => $_GPC['value']), array('uniacid' => $_W['uniacid'], 'openid' => $_GPC['openid']));
            } elseif ($_GPC['type'] == 'share') {
                $res = pdo_update('hulu_like_user', array('user_share' => $_GPC['value']), array('uniacid' => $_W['uniacid'], 'openid' => $_GPC['openid']));
            }

            if (!empty($res)) {
                message('恭喜！修改成功！', $this->createWebUrl('user'), 'success');
            } else {
                message('抱歉！修改失败！', $this->createWebUrl('user'), 'error');
            }
        } else {
            message('抱歉！您没有权限修改此信息！', $this->createWebUrl('user'), 'error');
        }
    } else {
        message('抱歉！您要修改的信息不存在！', $this->createWebUrl('user'), 'error');
    }
} else {
    message('警告！请勿提交非法网址！', $this->createWebUrl('user'), 'error');
}
?>