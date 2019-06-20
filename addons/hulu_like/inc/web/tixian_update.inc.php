<?php

global $_W,$_GPC;

if(!empty($_GPC['money_id'])){
$tixian=pdo_fetch("SELECT * FROM".tablename('hulu_like_tixian')."WHERE uniacid=:uniacid AND money_id=:money_id",array(':uniacid'=>$_W['uniacid'],':money_id'=>$_GPC['money_id']));

if(!empty($tixian)){
	if($tixian['uniacid']==$_W['uniacid']){
		

		//拒绝提现
		if($_W['ispost']){
if(checksubmit('submit')){
	
		$res=pdo_update('hulu_like_tixian',array('money_pid'=>$_GPC['money_pid'],'money_content'=>$_GPC['money_content']),array('uniacid'=>$_W['uniacid'],'money_id'=>$_GPC['money_id']));
		if(!empty($res)){			message('恭喜！修改成功！',$this->createWebUrl('tixian'),'success');
		}else{			message('抱歉！修改失败！',$this->createWebUrl('tixian'),'error');		}

}
		}else{
		//

		$res=pdo_update('hulu_like_tixian',array('money_pid'=>$_GPC['money_pid']),array('uniacid'=>$_W['uniacid'],'money_id'=>$_GPC['money_id']));
		if(!empty($res)){			message('恭喜！修改成功！',$this->createWebUrl('tixian'),'success');
		}else{			message('抱歉！修改失败！',$this->createWebUrl('tixian'),'error');		}


		}

	}else{		message('抱歉！您没有权限修改此广告信息！',$this->createWebUrl('tixian'),'error');	}
}else{message('抱歉！您要修改的信息不存在！',$this->createWebUrl('tixian'),'error');}

}else{	message('警告！请勿提交非法网址！',$this->createWebUrl('tixian'),'error');}

?>