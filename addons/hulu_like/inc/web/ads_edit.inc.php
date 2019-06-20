<?php

global $_W,$_GPC;

if($_W['ispost']){
	if(checksubmit('submit')){

			$newdata=array(
		
			'ads_pid'=>$_GPC['ads_pid'],
			'ads_did'=>$_GPC['ads_did'],

			'ads_title'=>$_GPC['ads_title'],
			'ads_link'=>$_GPC['ads_link'],
			'ads_pic'=>$_GPC['ads_pic'],
			'ads_time'=>$_W['timestamp'],
			'ads_ip'=>$_W['clientip'],
			);

		$res=pdo_update('hulu_like_ads',$newdata,array('uniacid'=>$_W['uniacid'],'ads_id'=>$_GPC['ads_id']));
		if(!empty($res)){
			message('恭喜！修改成功！',$this->createWebUrl('ads'),'success');
		}else{
			message('抱歉！修改失败！',$this->createWebUrl('ads'),'error');
		}
	
	}

}else{

if(!empty($_GPC['ads_id'])){
$ads=pdo_fetch("SELECT * FROM".tablename('hulu_like_ads')."WHERE uniacid=:uniacid AND ads_id=:ads_id",array(':uniacid'=>$_W['uniacid'],':ads_id'=>$_GPC['ads_id']));

if(!empty($ads)){
	if($ads['uniacid']==$_W['uniacid']){
		
		$ads=pdo_fetch("SELECT * FROM".tablename('hulu_like_ads')."WHERE uniacid=:uniacid AND ads_id=:ads_id",array(':uniacid'=>$_W['uniacid'],':ads_id'=>$_GPC['ads_id']));

	load()->func('tpl');
include $this->template('web/page/ads_edit');


	}else{		message('抱歉！您没有权限修改此信息！',$this->createWebUrl('ads'),'error');	}
}else{message('抱歉！您要修改的信息不存在！',$this->createWebUrl('ads'),'error');}

}else{	message('警告！请勿提交非法网址！',$this->createWebUrl('ads'),'error');}

}
?>