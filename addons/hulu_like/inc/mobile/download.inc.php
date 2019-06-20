<?php
global $_W, $_GPC;

if ($_W['ispost']) {
    if ($_W['isajax']) {
		if($_SESSION['biaoshi']){
			$_W['openid'] = $_SESSION['biaoshi'];
		}
        if ($_GPC['type'] == 'talk') {
            $account_api = WeAccount::create();
            $filename = $account_api->downloadMedia($_GPC['serverId'], true);
            echo $filename;
        } elseif ($_GPC['type'] == 'add') {
            $account_api = WeAccount::create();
            $filename = $account_api->downloadMedia($_GPC['media_id'], true);
            echo $filename;
            $newpicture = array(
                'uniacid' => $_W['uniacid'],
                'openid' => $_W['openid'],
                'picture_pid' => '2',
                'picture_type' => $_GPC['picture_type'],
                'picture_vid' => '',
                'picture_url' => $filename,
                'picture_time' => $_W['timestamp'],
                'picture_ip' => $_W['clientip'],
                'picture_container' => $_W['container'],
                'picture_os' => $_W['os'],
            );
            $res = pdo_insert('hulu_like_picture', $newpicture);
        } elseif ($_GPC['type'] == 'del') {
            $ptype = $_GPC['ptype'] ? $_GPC['ptype'] : 'show';
            $picture = pdo_fetch("SELECT * FROM" . tablename('hulu_like_picture') . "WHERE uniacid=:uniacid AND picture_id=:picture_id AND openid=:openid AND picture_type=:picture_type", array(':uniacid' => $_W['uniacid'], ':picture_id' => $_GPC['picture_id'], ':openid' => $_W['openid'], ':picture_type' => $ptype));

            if (!empty($picture)) {
                $res = pdo_delete('hulu_like_picture', array('uniacid' => $_W['uniacid'], 'picture_id' => $_GPC['picture_id'], 'openid' => $_W['openid'], 'picture_type' => $ptype));
                if (!empty($res)) {
                    load()->func('file');
                    file_delete($picture['picture_url']);
                    echo "1";
                }
            }
        }
    }
}
?>