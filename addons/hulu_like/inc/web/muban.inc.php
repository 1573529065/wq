<?php

global $_W,$_GPC;
if($_W['ispost']){
	if(checksubmit('submit')){
	
		$newmuban=array(	
			'muban_send_news'=>$_GPC['muban_send_news'],
			
			);
		$res=pdo_update('hulu_like_muban',$newmuban,array('uniacid'=>$_W['uniacid']));
		if(!empty($res)){
			message('恭喜！修改成功！',$this->createWebUrl('muban'),'success');
		}else{
			message('抱歉！修改失败！',$this->createWebUrl('muban'),'error');
		}
	}
}else{

	$muban=pdo_fetchall("SELECT * FROM".tablename('hulu_like_muban')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

	if(empty($muban)){
				$mubandata=array(
			'uniacid'=>$_W['uniacid'],
			'muban_send_news'=>'',
			
			);
		pdo_insert('hulu_like_muban',$mubandata);

	}
			$muban=pdo_fetch("SELECT * FROM".tablename('hulu_like_muban')."WHERE uniacid=:uniacid",array(':uniacid'=>$_W['uniacid']));

	
			include $this->template('web/muban');


}

?>