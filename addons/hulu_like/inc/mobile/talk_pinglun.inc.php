<?php


global $_W,$_GPC;

//判断头部开始

if($_W['container']=="wechat"){
	if(!empty($_W['openid'])){






if($_W['ispost']){
if($_W['isajax']){



//赞
	if($_GPC['type']=='1'){

	$oldzan=pdo_fetchall("SELECT * FROM".tablename('hulu_like_talk_zan')."WHERE uniacid=:uniacid AND talk_id=:talk_id AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':talk_id'=>$_GPC['talk_id'],':openid'=>$_W['openid']));
if(empty($oldzan)){
		$zandata=array(
			'uniacid'=>$_W['uniacid'],
			'openid'=>$_W['openid'],
			'talk_id'=>$_GPC['talk_id'],
			'zan_time'=>$_W['timestamp'],
			'zan_ip'=>$_W['clientip'],
			'zan_container'=>$_W['container'],
			'zan_os'=>$_W['os'],

			);
			$res=pdo_insert('hulu_like_talk_zan',$zandata);
	$zan=pdo_fetchall("SELECT * FROM".tablename('hulu_like_talk_zan')."WHERE uniacid=:uniacid AND talk_id=:talk_id",array(':uniacid'=>$_W['uniacid'],':talk_id'=>$_GPC['talk_id']));

	$data=array(
		'type'=>'1',
		'num'=>count($zan),
		);
	echo json_encode($data);

}
}elseif($_GPC['type']=='2'){
	

	$oldpinglun=pdo_fetchall("SELECT * FROM".tablename('hulu_like_talk_pinglun')."WHERE uniacid=:uniacid AND talk_id=:talk_id AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':talk_id'=>$_GPC['talk_id'],':openid'=>$_W['openid']));
	if(empty($oldpinglun)){
if(!empty($_GPC['pinglun_content'])){
		$newpinglun=array(
			'uniacid'=>$_W['uniacid'],
			'openid'=>$_W['openid'],
			'talk_id'=>$_GPC['talk_id'],
			'pinglun_content'=>$_GPC['pinglun_content'],
			'pinglun_time'=>$_W['timestamp'],
			'pinglun_ip'=>$_W['clientip'],
			'pinglun_container'=>$_W['container'],
			'pinglun_os'=>$_W['os'],

			);
			$res=pdo_insert('hulu_like_talk_pinglun',$newpinglun);
if(!empty($res)){
$pinglunid=pdo_insertId();
	$user=pdo_fetch("SELECT * FROM".tablename('hulu_like_user')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$_W['uniacid'],'openid'=>$_W['openid']));

		$pinglun=pdo_fetch("SELECT * FROM".tablename('hulu_like_talk_pinglun')."WHERE uniacid=:uniacid AND pinglun_id=:pinglun_id",array(':uniacid'=>$_W['uniacid'],'pinglun_id'=>$pinglunid));
$text="<div class='talk_list_pinglun_style'><div class='talk_list_pinglun_avatar'><img src='".$user['avatar']."'></div><div class='talk_list_pinglun_p'>".$pinglun['pinglun_content']."</div></div>";

	$oldpinglun=pdo_fetchall("SELECT * FROM".tablename('hulu_like_talk_pinglun')."WHERE uniacid=:uniacid AND talk_id=:talk_id AND openid=:openid",array(':uniacid'=>$_W['uniacid'],':talk_id'=>$_GPC['talk_id'],'openid'=>$_W['openid']));

	$data=array(
		
		'type'=>'2',
		'num'=>count($oldpinglun),
		'text'=>$text,
		);
	echo json_encode($data);

}
		
}

}


	}
}
}



}
}


?>