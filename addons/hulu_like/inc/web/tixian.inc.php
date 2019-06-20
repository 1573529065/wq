<?php

global $_W,$_GPC;
include "function.php";


//获取分站提现资料
function gettixian($uniacid,$openid){
	global $_W;
$user=pdo_fetch("SELECT * FROM".tablename('hulu_like_more')."WHERE uniacid=:uniacid AND openid=:openid",array(':uniacid'=>$uniacid,':openid'=>$openid));
return "
<table class='table'>
<tbody>
<tr><th>姓名：</th><th>{$user['more_tixian_name']}</th></tr>
<tr><th>手机号：</th><th>{$user['more_tixian_tel']}</th></tr>
<tr><th>微信：</th><th>{$user['more_tixian_wechat']}</th></tr>
<!--
<tr><th>微信收款码：</th><th><img style='width:200px;height:200px;' src='{$_W['attachurl']}{$user['tixian_wechat_qrcode']}'/></th></tr>
-->
<tr><th>支付宝：</th><th>{$user['more_tixian_alipay']}</th></tr>
<!--
<tr><th>支付宝收款码：</th><th><img style='width:200px;height:200px;' src='{$_W['attachurl']}{$user['tixian_alipay_qrcode']}'/></th></tr>
-->
</tbody>
</table>
";
}


$type=isset($_GPC['type'])?$_GPC['type']:"0";


if($type=="0"){
	$sql="";
}elseif($type!="0"){  $sql="AND money_pid='".$type."' ";  }

$total=  pdo_fetchcolumn("SELECT count(*) FROM".tablename('hulu_like_tixian')."WHERE uniacid=:uniacid ".$sql." ORDER BY money_id DESC",array(':uniacid'=>$_W['uniacid']));

//分页开始
$pageIndex = max(1, intval($_GPC['page']));
$pageSize = 20;
$pagination = pagination($total,$pageIndex,$pageSize);
$tixian=pdo_fetchall("SELECT * FROM".tablename('hulu_like_tixian')."WHERE uniacid=:uniacid ".$sql." ORDER BY money_id DESC LIMIT ".($pageIndex-1)*$pageSize.",".$pageSize,array(':uniacid'=>$_W['uniacid']));
//分页结束




include $this->template("web/tixian");


?>