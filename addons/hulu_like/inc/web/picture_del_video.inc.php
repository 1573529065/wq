<?php

global $_W,$_GPC;

if(!empty($_GPC['picture_id'])){

$picture=pdo_fetch("SELECT * FROM".tablename('hulu_like_picture_video')."WHERE uniacid=:uniacid AND picture_id=:picture_id",array(':uniacid'=>$_W['uniacid'],':picture_id'=>$_GPC['picture_id']));

if(!empty($picture)){
	if($picture['uniacid']==$_W['uniacid']){
		

		load()->func('file');
file_delete($picture['picture_pic']);
		$res=pdo_delete('hulu_like_picture_video',array('uniacid'=>$_W['uniacid'],'picture_id'=>$_GPC['picture_id']));

		if(!empty($res)){
			message('恭喜！修改成功！',$this->createWebUrl('picture_video',array('openid'=>$_GPC['openid'])),'success');
		}else{
			message('抱歉！修改失败！',$this->createWebUrl('picture_video',array('openid'=>$_GPC['openid'])),'error');
		}


	}else{		message('抱歉！您没有权限修改此信息！',$this->createWebUrl('picture_video',array('openid'=>$_GPC['openid'])),'error');	}

}else{message('抱歉！您要修改的信息不存在！',$this->createWebUrl('picture_video',array('openid'=>$_GPC['openid'])),'error');}

}else{	message('警告！请勿提交非法网址！',$this->createWebUrl('picture_video',array('openid'=>$_GPC['openid'])),'error');}

?>