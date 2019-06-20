<?php

global $_W,$_GPC;

if($_W['ispost']){
if($_W['isajax']){

if($_GPC['type']=='1'){
$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));
$lat=$_GPC['lat'];
$lng=$_GPC['lng'];

$url="http://apis.map.qq.com/ws/geocoder/v1/?location=".$lat.','.$lng."&get_poi=0&key=".$make['make_key_qq'];
$data=json_decode(file_get_contents($url),true);

//$ditu=$data['result']['address_component']['district'];//区县
//$ditu=$data['result']['address_reference']['town']['title'];//镇
$ditu=$data['result']['formatted_addresses']['recommend'];//具体地址

echo $ditu;



}elseif($_GPC['type']=='2'){


}


}
}
?>