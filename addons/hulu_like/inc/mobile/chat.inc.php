<?php

global $_W,$_GPC;

include 'function.php';
check();

$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

//Î´¶ÁÏûÏ¢

function weidunews($uniacid,$openid,$news_openid){

$weidu=pdo_fetchall("SELECT * FROM".tablename('hulu_like_news')."WHERE uniacid=:uniacid AND openid=:openid AND news_openid=:news_openid AND news_pid=:news_pid",array(':uniacid'=>$uniacid,':openid'=>$news_openid,':news_openid'=>$openid,':news_pid'=>'1'));

$weidu_num=count($weidu);
if($weidu_num>0){
	echo"<div class='chat_list_right_num'>".$weidu_num."</div>";

}elseif($weidu_num<=0){	echo"<div class='chat_list_right_nonum'></div>";}

}



$chat=pdo_fetchall("

SELECT a.news_id,a.news_content,a.news_time,b.news_openid AS username
FROM (
SELECT MAX(k.news_id) AS news_id,k.news_openid FROM (
SELECT MAX(news_id) AS news_id,news_openid FROM ".tablename('hulu_like_news')."
WHERE uniacid='".$_W['uniacid']."' AND openid='".$_W['openid']."'  GROUP BY news_openid 
UNION ALL
SELECT MAX(news_id) AS news_id,openid FROM ".tablename('hulu_like_news')."
WHERE uniacid='".$_W['uniacid']."' AND  news_openid='".$_W['openid']."'  GROUP BY openid 
) k  GROUP BY k.news_openid )
b INNER JOIN ".tablename('hulu_like_news')." a ON a.news_id=b.news_id ORDER BY news_id DESC
");



	//$kefu=pdo_fetchall("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND kefu_if=:kefu_if ORDER BY uid ASC",array(':uniacid'=>$_W['uniacid'],':kefu_if'=>'2'));


auth();
include $this->template('chat');

?>