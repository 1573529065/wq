<?php

global $_W,$_GPC;

if(!empty($_GPC['active_id'])){

$active=pdo_fetch("SELECT * FROM".tablename('hulu_like_active')."WHERE uniacid=:uniacid AND active_id=:active_id",array(':uniacid'=>$_W['uniacid'],':active_id'=>$_GPC['active_id']));

if(!empty($active)){
	if($active['uniacid']==$_W['uniacid']){
		
		$res=pdo_update('hulu_like_active',array('active_pid'=>$_GPC['active_pid']),array('uniacid'=>$_W['uniacid'],'active_id'=>$_GPC['active_id']));
		if(!empty($res)){
			message('恭喜！修改成功！',$this->createWebUrl('active'),'success');
		}else{
			message('抱歉！修改失败！',$this->createWebUrl('active'),'error');
		}


	}else{		message('抱歉！您没有权限修改此信息！',$this->createWebUrl('active'),'error');	}
}else{message('抱歉！您要修改的信息不存在！',$this->createWebUrl('active'),'error');}

}else{	message('警告！请勿提交非法网址！',$this->createWebUrl('active'),'error');}

?>