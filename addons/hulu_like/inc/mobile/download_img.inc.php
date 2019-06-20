<?php
global $_W, $_GPC;

if ($_W['ispost']) {
    if ($_W['isajax']) {
		if($_SESSION['biaoshi']){
			$_W['openid'] = $_SESSION['biaoshi'];
		}
           $account_api = WeAccount::create();
            $filename = $account_api->downloadMedia($_GPC['media_id'], true);
            //echo $filename;
            $user_data = array(
                'user_img'=>$filename
//                'uniacid' => $_W['uniacid'],
//                'openid' => $_W['openid'],
//                'picture_pid' => '2',
//                'picture_type' => $_GPC['picture_type'],
//                'picture_vid' => '',
//                'picture_url' => $filename,
//                'picture_time' => $_W['timestamp'],
//                'picture_ip' => $_W['clientip'],
//                'picture_container' => $_W['container'],
//                'picture_os' => $_W['os'],
            );
            $res = pdo_update('hulu_like_user', $user_data, array('uniacid' => $_W['uniacid'], 'openid' => $_W['openid']));
            if($res){
              echo 200;
            }else{
				echo 500;
			}
            
    }
}
?>