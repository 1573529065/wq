<?php


global $_W,$_GPC;


if($_W['ispost']){
if($_W['isajax']){

//$news=pdo_fetchall("SELECT * FROM".tablename('hulu_like_news')."WHERE uniacid=:uniacid AND ((openid='".$_W['openid']."' AND news_openid='".$_GPC['news_openid']."') OR (openid='".$_GPC['news_openid']."' AND news_openid='".$_W['openid']."')) ",array('uniacid'=>$_W['uniacid']));

$news=pdo_fetchall("SELECT * FROM".tablename('hulu_like_news')."WHERE uniacid=:uniacid AND openid=:openid AND news_openid=:news_openid",array('uniacid'=>$_W['uniacid'],':openid'=>$_W['openid'],':news_openid'=>$_GPC['news_openid']));


/*
foreach($news as $key=>$v){
	pdo_delete('hulu_like_news',array('uniacid'=>$_W['uniacid'],'news_id'=>$v));
	}
*/


}
}

?>