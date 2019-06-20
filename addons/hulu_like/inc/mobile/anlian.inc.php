<?php


global $_W,$_GPC;

if($_W['ispost']){

if($_W['isajax']){



	//增加访问记录开始
if((!empty($_W['openid']))&&($_W['openid']!=$_GPC['like_openid'])){

$like=pdo_fetchall("SELECT * FROM".tablename('hulu_like_like')."WHERE uniacid=:uniacid AND openid=:openid AND like_openid=:like_openid",array(':uniacid'=>$_W['uniacid'],':openid'=>$_W['openid'],':like_openid'=>$_GPC['like_openid']));

if(empty($like)){
	$likedata=array(
		'uniacid'=>$_W['uniacid'],
		'openid'=>$_W['openid'],
		'like_openid'=>$_GPC['like_openid'],
		'like_time'=>$_W['timestamp'],
		'like_ip'=>$_W['clientip'],
		'like_container'=>$_W['container'],
		'like_os'=>$_W['os'],
		);
	pdo_insert("hulu_like_like",$likedata);


}

}
//增加访问记录结束



}
}
?>