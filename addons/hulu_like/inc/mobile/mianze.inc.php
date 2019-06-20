<?php
global $_W, $_GPC;

if ($_W['ispost']) {
    if ($_W['isajax']) {
            $user_data = array(
                'is_mz'=>1
            );
			if($_SESSION['biaoshi']){
					$_W['openid'] = $_SESSION['biaoshi'];
				}
            $res = pdo_update('hulu_like_user', $user_data, array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));
			if($res){
               message('200');
            }
            message('500');
    }
}
?>