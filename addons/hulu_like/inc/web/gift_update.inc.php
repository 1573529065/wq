<?php

global $_W,$_GPC;

if(!empty($_GPC['gift_id'])){

$gift=pdo_fetch("SELECT * FROM".tablename('hulu_like_gift')."WHERE uniacid=:uniacid AND gift_id=:gift_id",array(':uniacid'=>$_W['uniacid'],':gift_id'=>$_GPC['gift_id']));

if(!empty($gift)){

		
		$res=pdo_update('hulu_like_gift',array('gift_pid'=>$_GPC['gift_pid']),array('uniacid'=>$_W['uniacid'],'gift_id'=>$_GPC['gift_id']));
		if(!empty($res)){
			message('恭喜！修改成功！',$this->createWebUrl('gift'),'success');
		}else{
			message('抱歉！修改失败！',$this->createWebUrl('gift'),'error');
		}



}else{message('抱歉！您要修改的信息不存在！',$this->createWebUrl('gift'),'error');}

}else{	message('警告！请勿提交非法网址！',$this->createWebUrl('gift'),'error');}

?>