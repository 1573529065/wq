<?php

global $_W,$_GPC;

if($_W['ispost']){
if(checksubmit('submit')){
	$password=$_GPC['password'];
	$repassword=$_W['config']['db']['master']['password'];
		if(empty($password)){
		itoast("数据库密码不得为空！",$this->createWebUrl('dealsql'),"error");
		exit();

	}

		if($password!=$repassword){
		itoast("数据库密码错误！",$this->createWebUrl('dealsql'),"error");
		exit();

	}

//27张表

$sqldata=array(
	array('sqlname'=>"active",),
		array('sqlname'=>"ads",),
		array('sqlname'=>"chongzhi",),
		array('sqlname'=>"contact",),
		array('sqlname'=>"gift",),
		array('sqlname'=>"join",),
		array('sqlname'=>"liaodou",),
		array('sqlname'=>"like",),
	array('sqlname'=>"make",),			
	array('sqlname'=>"member",),
	array('sqlname'=>"money",),
	array('sqlname'=>"more",),
	array('sqlname'=>"muban",),
	array('sqlname'=>"news",),
	array('sqlname'=>"order",),
	array('sqlname'=>"picture",),
	array('sqlname'=>"present",),
	array('sqlname'=>"request",),
	array('sqlname'=>"sham",),
	array('sqlname'=>"share",),
	array('sqlname'=>"system",),
	array('sqlname'=>"talk",),
	array('sqlname'=>"talk_pinglun",),
	array('sqlname'=>"talk_zan",),
	array('sqlname'=>"taocan",),
	array('sqlname'=>"tixian",),
	array('sqlname'=>"user",),
	array('sqlname'=>"viewer",),

	);
	foreach($sqldata as $key=>$v){
if(pdo_tableexists("hulu_like_".$v['sqlname']."")){
$res=pdo_query("TRUNCATE ".tablename('hulu_like_'.$v['sqlname'].'').";");

if($res=="0"){
echo "<h2 style='color:green;'>【".$_W['config']['db']['master']['tablepre']."hulu_like_".$v['sqlname']."】表清空完成！</h2>";
}

}

	}
		message("交友相亲模块数据清空完成！",$this->createWebUrl('dealsql'),"success");





}
}else{

include $this->template("web/dealsql");

}

?>