<?php defined('IN_IA') or exit('Access Denied');?><style>
#kefu{width:40px;height:77px;background-color:rgba(0,0,0,0.4);
position:fixed;top:100px;right:0px;z-index:100;}

.kefu_1{width:30px;height:30px;margin:4px auto;
text-align:center;line-height:15px;font-size:12px;color:#FFF;overflow:hidden;}

.kefu_xian{width:80%;height:1px;margin:0px auto;background-color:#FFF;}

.kefu_2{width:30px;height:30px;margin:4px auto;
text-align:center;line-height:15px;font-size:12px;color:#FFF;overflow:hidden;}


#kefu_one{width:100%;height:100%;background-color:rgba(0,0,0,0.6);position:relative;display:none;
position:fixed;top:0px;right:0px;z-index:1000;}
.kefu_one_pic{width:200px;height:200px;
position:absolute;top:100px;left:50%;z-index:10000;
-webkit-transform:translateX(-50%);-ms-transform:translateX(-50%);-o-transform:translateX(-50%);transform:translateX(-50%);}
.kefu_one_pic img{width:100%;height:100%;}

#kefu_two{width:100%;height:100%;background-color:rgba(0,0,0,0.6);position:relative;display:none;
position:fixed;top:0px;right:0px;z-index:1000;}
.kefu_two_pic{width:200px;height:200px;
position:absolute;top:100px;left:50%;z-index:10000;
-webkit-transform:translateX(-50%);-ms-transform:translateX(-50%);-o-transform:translateX(-50%);transform:translateX(-50%);}
.kefu_two_pic img{width:100%;height:100%;}

</style>

<div id="kefu">
<div class="kefu_1">订阅我们</div>
<div class="kefu_xian"></div>
<div class="kefu_2">联系客服</div>
</div>

<div id="kefu_one">
<div class="kefu_one_pic"><img src="<?php  echo $_W['account']['qrcode'];?>"/></div>
</div>

<div id="kefu_two">
<div class="kefu_two_pic"><img src="<?php  echo $_W['attachurl'];?><?php  echo $make['make_kefu_qrcode'];?>"/></div>
</div>

<script type="text/javascript">
$(document).ready(function(){

  $(".kefu_1").click(function(){
  $("#kefu_one").show();
  });

$("#kefu_one").click(function(){
  $(this).hide();
  });

  $(".kefu_2").click(function(){
  $("#kefu_two").show();
  });

  $("#kefu_two").click(function(){
  $(this).hide();
  });

});
</script>