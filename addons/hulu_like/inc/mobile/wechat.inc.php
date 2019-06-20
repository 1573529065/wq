<?php

global $_W;

if($_W['container']!='wechat'){
include $this->template('wechat');exit();
}elseif(empty($_W['openid'])){
include $this->template('follow');exit();
}elseif(($_W['container']=='wechat')&&(!empty($_W['openid']))){

						header("Location: ".$this->createMobileUrl('fengmian'));exit();
}
?>