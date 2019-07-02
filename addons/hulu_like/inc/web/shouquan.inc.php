<?php

global $_W, $_GPC;
if ($_W['ispost']) {
    if (checksubmit('submit')) {
        if ($_GPC['type'] == "1") {

        } elseif ($_GPC['type'] == "2") {
            $newdata = array('make_authcode' => $_GPC['shouquancode'],);
            $res = pdo_update('hulu_like_make', $newdata, array('uniacid' => $_W['uniacid']));
            if (!empty($res)) {
                message('恭喜！修改成功！', $this->createWebUrl('shouquan'), 'success');
            } else {
                message('抱歉！修改失败！', $this->createWebUrl('shouquan'), 'error');
            }
        }
    }

} else {

    $make = pdo_fetch("SELECT * FROM" . tablename('hulu_like_make') . "WHERE uniacid=:uniacid", array(':uniacid' => $_W['uniacid']));

    if (empty($make)) {
        header("Location: " . $this->createWebUrl('make'));
        exit();
    }
    $shouquancode = $make['make_authcode'];

    include $this->template('web/shouquan');

}
?>