<?php

global $_W,$_GPC;


if($_W['ispost']){

if($_GPC['type']=='1'){

$account_api = WeAccount::create();
$filename = $account_api->downloadMedia($_GPC['media_id'], true);
echo $filename;

}elseif($_GPC['type']=='2'){

	print_r($_POST);

}

}else{

include $this->template('upload1');

}


?>