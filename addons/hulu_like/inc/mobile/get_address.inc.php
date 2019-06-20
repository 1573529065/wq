<?php

global $_W,$_GPC;

if($_W['ispost']){
if($_W['isajax']){

$lat=$_GPC['lat'];
$lng=$_GPC['lng'];

if($_GPC['type']=='1'){

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));
//http://lbs.qq.com/webservice_v1/guide-gcoder.html
$url="http://apis.map.qq.com/ws/geocoder/v1/?location=".$lat.','.$lng."&get_poi=0&key=".$make['make_key_qq'];
$data=json_decode(file_get_contents($url),true);

echo $data['result']['formatted_addresses']['recommend'];
//$city=$data['result']['address_component']['district'];

}elseif($_GPC['type']=='2'){
}

}
}
?>