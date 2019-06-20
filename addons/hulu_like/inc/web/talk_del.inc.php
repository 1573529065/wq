<?php

global $_W,$_GPC;

if(!empty($_GPC['talk_id'])){
$talk=pdo_fetch("SELECT * FROM".tablename('hulu_like_talk')."WHERE uniacid=:uniacid AND talk_id=:talk_id",array(':uniacid'=>$_W['uniacid'],':talk_id'=>$_GPC['talk_id']));

if(!empty($talk)){

		$res=pdo_delete('hulu_like_talk',array('uniacid'=>$_W['uniacid'],'talk_id'=>$_GPC['talk_id']));
		if(!empty($res)){
			message('恭喜！删除成功！',$this->createWebUrl('talk'),'success');
		}else{
			message('抱歉！删除失败！',$this->createWebUrl('talk'),'error');
		}

	}else{		message('抱歉！您没有权限删除此信息！',$this->createWebUrl('talk'),'error');	}


}else{	message('警告！请勿提交非法网址！',$this->createWebUrl('talk'),'error');}

?>