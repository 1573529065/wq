<?php defined('IN_IA') or exit('Access Denied');?><style>
#liaotian_fanhui{width:100%;height:100%;background-color:rgba(0,0,0,0.6);display:none;
position:relative;position:fixed;top:0px;left:0px;z-index:1000;}

.liaotian_fanhui_body{width:300px;height:220px;background-color:#FFF;
-webkit-transform:translateX(-50%);-ms-transform:translateX(-50%);-o-transform:translateX(-50%);transform:translateX(-50%);
position:absolute;top:100px;left:50%;z-index:10000;}

.liaotian_fanhui_p{width:80%;height:120px;margin:20px auto;background-color:#EEE;
text-align:center;line-height:120px;font-size:16px;color:#000;overflow:hidden;}

.liaotian_fanhui_ok{width:80%;height:40px;margin:20px auto;;
text-align:left;line-height:40px;font-size:16px;color:#000;overflow:hidden;}

.liaotian_fanhui_ok1{float:left;width:40%;height:40px;margin:0px 10% 0px 0px;background-color:#999;
text-align:center;line-height:40px;font-size:14px;color:#FFF;overflow:hidden;}

.liaotian_fanhui_ok2{float:right;width:40%;height:40px;margin:0px 0px 0px 10%;background-color:#FA4D47;
text-align:center;line-height:40px;font-size:14px;color:#FFF;overflow:hidden;}
</style>

<div id="liaotian_fanhui">

<div class="liaotian_fanhui_body">

<div class="liaotian_fanhui_p">深入了解Ta？</div>

<div class="liaotian_fanhui_ok">
<div class="liaotian_fanhui_ok1">稍后再说</div>
<a href="<?php  echo $this->createMobileUrl('vip',array('openid'=>$_GPC['openid']));?>">
<div class="liaotian_fanhui_ok2">立即了解</div>
</a>
</div>

</div>

</div>

<script type="text/javascript">
$(document).ready(function(){
  $(".liaotian_fanhui_ok1").click(function(){
  $("#liaotian_fanhui").hide();
  });
});
</script>