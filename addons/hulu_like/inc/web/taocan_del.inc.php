<?php

global $_W,$_GPC;

if(!empty($_GPC['taocan_id'])){

$taocan=pdo_fetch("SELECT * FROM".tablename('hulu_like_taocan')."WHERE uniacid=:uniacid AND taocan_id=:taocan_id",array(':uniacid'=>$_W['uniacid'],':taocan_id'=>$_GPC['taocan_id']));

if(!empty($taocan)){
		
		$res=pdo_delete('hulu_like_taocan',array('uniacid'=>$_W['uniacid'],'taocan_id'=>$_GPC['taocan_id']));
		if(!empty($res)){
			message('恭喜！删除成功！',$this->createWebUrl('taocan'),'success');
		}else{
			message('抱歉！删除失败！',$this->createWebUrl('taocan'),'error');
		}


}else{message('抱歉！您要删除的信息不存在！',$this->createWebUrl('taocan'),'error');}

}else{	message('警告！请勿提交非法网址！',$this->createWebUrl('taocan'),'error');}

?>