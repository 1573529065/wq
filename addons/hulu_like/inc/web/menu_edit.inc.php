<?php
global $_W, $_GPC;
if ($_W['ispost']) {
    if (checksubmit('submit')) {
        $link = $_GPC['link'];
        if (!$link) {
            $menu_data = $this->get_table_row('hulu_like_menu', $_GPC['id']);
            $link = $this->createMobileUrl($menu_data['menu_index']);
        }
        $newmenu = array(
            'name' => $_GPC['name'],
            'sort' => $_GPC['sort'],
            'pic' => $_GPC['pic'],
            'link' => $link,
        );
        $res = pdo_update('hulu_like_menu', $newmenu, array('weid' => $_W['uniacid'], 'id' => $_GPC['id']));
        if (!empty($res)) {
            message('恭喜，更新成功！', $this->createWebUrl('menu'), 'success');
        } else {
            message('抱歉，更新失败！', $this->createWebUrl('menu'), 'error');
        }
    }
} else {
    if (!empty($_GPC['id'])) {
        $caidan = pdo_fetch("SELECT * FROM" . tablename('hulu_like_menu') . "WHERE weid=:uniacid AND id=:menu_id", array(':uniacid' => $_W['uniacid'], ':menu_id' => $_GPC['id']));
        if (!empty($caidan)) {
            if ($caidan['weid'] == $_W['uniacid']) {
                include $this->template('web/page/menu_edit');
            } else {
                message('你无权更新此信息！', $this->createWebUrl('menu'), 'error');
            }
        } else {
            message('该信息不存在！', $this->createWebUrl('menu'), 'error');
        }
    } else {
        message('请勿提交非法网址！', $this->createWebUrl('menu'), 'error');
    }
}
?>