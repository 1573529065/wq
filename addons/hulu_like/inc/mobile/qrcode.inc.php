<?php
global $_W,$_GPC;


	load()->func('communication');
		//$longurl = trim("http://wx.j-3.cc/app/index.php?i=2&c=entry&do=fengmian&m=hulu_like");
		$longurl=$_W['siteroot']."app/index.php?i=".$_W['uniacid']."&c=entry&share=".$_W['openid']."&do=my&m=hulu_like";
		//$token = WeAccount::token(WeAccount::TYPE_WEIXIN);
		$token = WeAccount::token();
		$url = "https://api.weixin.qq.com/cgi-bin/shorturl?access_token={$token}";
		$send = array();
		$send['action'] = 'long2short';
		$send['long_url'] = $longurl;
		$response = ihttp_request($url, json_encode($send));

//print_r($response);
		$data=(json_decode($response['content'],true));
		$url=$data['short_url'];

		//$url = $_GPC['url'];
		//$url=$this->createMobileUrl('my',array('openid'=>$_W['openid']));
		//$url=$_W['siteroot']."app/index.php?i=".$_W['uniacid']."&c=entry&openid=".$_W['openid']."&do=my&m=hulu_like";
		//$url=url('entry//login',array('m'=>'hulu_like'));	
		//var_dump($url);
	
	require(IA_ROOT . '/framework/library/qrcode/phpqrcode.php');
	$errorCorrectionLevel = "L";
	$matrixPointSize = "10";
	QRcode::png($url, false, $errorCorrectionLevel, $matrixPointSize);
//	$img=QRcode::png($url, false, $errorCorrectionLevel, $matrixPointSize);
	//echo"<img src=".$img."/>";
	exit();

?>