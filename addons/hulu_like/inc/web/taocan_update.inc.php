<?php

global $_W,$_GPC;

if(!empty($_GPC['taocan_id'])){

$taocan=pdo_fetch("SELECT * FROM".tablename('hulu_like_taocan')."WHERE uniacid=:uniacid AND taocan_id=:taocan_id",array(':uniacid'=>$_W['uniacid'],':taocan_id'=>$_GPC['taocan_id']));

if(!empty($taocan)){
		
		$res=pdo_update('hulu_like_taocan',array('taocan_pid'=>$_GPC['taocan_pid']),array('uniacid'=>$_W['uniacid'],'taocan_id'=>$_GPC['taocan_id']));
		if(!empty($res)){
			message('恭喜！修改成功！',$this->createWebUrl('taocan'),'success');
		}else{
			message('抱歉！修改失败！',$this->createWebUrl('taocan'),'error');
		}


}else{message('抱歉！您要修改的信息不存在！',$this->createWebUrl('taocan'),'error');}

}else{	message('警告！请勿提交非法网址！',$this->createWebUrl('taocan'),'error');}

?>