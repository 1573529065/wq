<?php defined('IN_IA') or exit('Access Denied');?><style>
#guanzhu{width:100%;height:40px;background-color:rgba(0,0,0,0.5);
position:fixed;bottom:55px;left:0px;z-index:100;}

.guanzhu_left{float:left;width:20%;height:40px;}
.guanzhu_left_pic{width:30px;height:30px;margin:5px auto;}
.guanzhu_left_pic img{width:100%;height:100%;}

.guanzhu_center{float:left;width:45%;height:40px;
text-align:left;line-height:40px;font-size:14px;color:#FFF;overflow:hidden;}

.guanzhu_right{float:left;width:25%;height:40px;}
.guanzhu_right_p{width:80%;height:26px;margin:7px auto;background-color:#27B6FF;border-radius:5px;
text-align:center;line-height:26px;font-size:14px;color:#FFF;overflow:hidden;}

.guanzhu_off{float:left;width:10%;height:40px;}

.guanzhu_off_pic{width:20px;height:20px;margin:10px auto;background-image:url("<?php echo MODULE_URL;?>public/images/cha.png");background-size:100% 100%;}

</style>

<div id="guanzhu">

<div class="guanzhu_left"><div class="guanzhu_left_pic"><img src="<?php  echo $_W['account']['avatar'];?>"/></div></div>

<div class="guanzhu_center">点击关注查看更多信息</div>

<div class="guanzhu_right"><div class="guanzhu_right_p">关注</div></div>

<div class="guanzhu_off"><div class="guanzhu_off_pic"></div></div>

</div>


<script type="text/javascript">
$(document).ready(function(){
  $(".guanzhu_off").click(function(){
  $("#guanzhu").hide();
  });

   $(".guanzhu_right_p").click(function(){
	    $("#guanzhu").hide();
  $("#kefu_one").show();
  });

});
</script>