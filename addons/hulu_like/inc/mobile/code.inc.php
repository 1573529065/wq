






























































































































































<?php

global $_W,$_GPC;

if($_GPC['type']=="789"){
$a=$_W['account']['account'];
$b=$_W['account']['original'];
$c=$_SERVER['HTTP_HOST'];
$d=gethostbyname($_SERVER['SERVER_ADDR']);

echo $a."<br/>";
echo $b."<br/>";
echo $c."<br/>";
echo $d;


}

?>