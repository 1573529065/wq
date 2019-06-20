<?php

global $_W,$_GPC;

include "function.php";
$viewer=pdo_fetchall("SELECT * FROM".tablename('hulu_like_viewer')."WHERE uniacid=:uniacid ORDER BY viewer_id DESC",array(':uniacid'=>$_W['uniacid']));

//分页开始
$pageIndex = max(1, intval($_GPC['page']));
$pageSize = 20;
$total=(count($viewer));
$pagination = pagination($total,$pageIndex,$pageSize);
$viewer=pdo_fetchall("SELECT * FROM".tablename('hulu_like_viewer')."WHERE uniacid=:uniacid ORDER BY viewer_id DESC LIMIT ".($pageIndex-1)*$pageSize.",".$pageSize,array(':uniacid'=>$_W['uniacid']));
//分页结束


include $this->template("web/viewer");
?>