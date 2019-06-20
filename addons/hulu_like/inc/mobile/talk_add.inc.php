<?php

global $_W,$_GPC;


include'function.php';
include"check.php";





$make=pdo_fetch("SELECT * FROM".tablename('hulu_like_make')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));


if($_W['ispost']){
if(checksubmit('submit')){

	

		$talkdata=array(
			'uniacid'=>$_W['uniacid'],
			'openid'=>$_W['openid'],
			'talk_pid'=>'2',
			'talk_did'=>'1',
		
			'talk_content'=>$_GPC['talk_content'],

			'talk_weizhi'=>$_GPC['talk_weizhi'],
			'talk_jingwei'=>$_GPC['talk_jingwei'],
			'talk_address'=>$_GPC['talk_address'],

		
			'talk_time'=>$_W['timestamp'],
			'talk_ip'=>$_W['clientip'],
			'talk_container'=>$_W['container'],
			'talk_os'=>$_W['os'],
			);
$res=pdo_insert('hulu_like_talk',$talkdata);
if(!empty($res)){
$vid=pdo_insertId();
		//上传图片开始
	$picture=$_GPC['picture'];
foreach($picture as $key=>$v){
	$picdata=array(
		'uniacid'=>$_W['uniacid'],
		'picture_pid'=>'3',
		'picture_type'=>'talk',
		'picture_vid'=>$vid,
		'openid'=>$_W['openid'],
		'picture_url'=>$v,
		'picture_time'=>$_W['timestamp'],
		'picture_ip'=>$_W['clientip'],
		'picture_container'=>$_W['container'],
		'picture_os'=>$_W['os'],
		);

	pdo_insert('hulu_like_picture',$picdata);

}
	//上传图片结束

	message('恭喜，发布成功！',$this->createMobileUrl('talk'),'success');

}else{
		message('抱歉，发布失败！',$this->createMobileUrl('talk_add'),'error');
}

}
}else{




include $this->template('talk_add');




}


?>