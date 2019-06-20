<?php

global $_W,$_GPC;

if($_W['ispost']){
	if(checksubmit('submit')){

		$newdata=array(
			'taocan_pid'=>$_GPC['taocan_pid'],
			'taocan_did'=>$_GPC['taocan_did'],
			'taocan_liaotian_jinbi'=>$_GPC['taocan_liaotian_jinbi'],
			'taocan_liaotian_person'=>$_GPC['taocan_liaotian_person'],
			'taocan_liaotian_time'=>$_GPC['taocan_liaotian_time'],	

			);

		$res=pdo_update('hulu_like_taocan',$newdata,array('uniacid'=>$_W['uniacid'],'taocan_id'=>$_GPC['taocan_id']));
		if(!empty($res)){
			message('恭喜！修改成功！',$this->createWebUrl('taocan'),'success');
		}else{
			message('抱歉！修改失败！',$this->createWebUrl('taocan'),'error');
		}
	
	}

}else{

if(!empty($_GPC['taocan_id'])){

	$taocan=pdo_fetch("SELECT * FROM".tablename('hulu_like_taocan')."WHERE uniacid=:uniacid AND taocan_id=:taocan_id",array(':uniacid'=>$_W['uniacid'],':taocan_id'=>$_GPC['taocan_id']));


if(!empty($taocan)){
		
		//$taocan=pdo_fetch("SELECT * FROM".tablename('hulu_like_ads')."WHERE uniacid=:uniacid AND ads_id=:ads_id",array(':uniacid'=>$_W['uniacid'],':ads_id'=>$_GPC['ads_id']));

include $this->template('web/page/taocan_edit');


}else{message('抱歉！您要修改的信息不存在！',$this->createWebUrl('taocan'),'error');}

}else{	message('警告！请勿提交非法网址！',$this->createWebUrl('taocan'),'error');}

}
?>