<?php

global $_W, $_GPC;

if (!empty($_GPC['talk_id']) && !empty($_GPC['talk_pid'])) {

    $talk = pdo_fetch("SELECT * FROM" . tablename('hulu_like_talk') . "WHERE uniacid=:uniacid AND talk_id=:talk_id", array(':uniacid' => $_W['uniacid'], ':talk_id' => $_GPC['talk_id']));

    if (!empty($talk)) {

        $res = pdo_update('hulu_like_talk', array('talk_pid' => $_GPC['talk_pid']), array('uniacid' => $_W['uniacid'], 'talk_id' => $_GPC['talk_id']));
        if (!empty($res)) {
            message('恭喜！修改成功！', $this->createWebUrl('talk'), 'success');
        } else {
            message('抱歉！修改失败！', $this->createWebUrl('talk'), 'error');
        }


    } else {
        message('抱歉！您要修改的信息不存在！', $this->createWebUrl('talk'), 'error');
    }

} else {
    message('警告！请勿提交非法网址！', $this->createWebUrl('talk'), 'error');
}

?>