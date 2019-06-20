<?php defined('IN_IA') or exit('Access Denied');?><!--操作开始-->
<script>
$(document).ready(function(){
   $(".talk_pinglun_ok_a").click(function(){
	   $("#pinglun_text").val("");
  $("#talk_pinglun").hide();

  });
});

function dianzan(talkid){
$(document).ready(function(){

 $.post("<?php  echo $this->createMobileUrl('talk_pinglun');?>",
  {
	   talk_id:talkid,
	   type:"1",
	 
  },
  function(data,status){
eval("var data="+data);
if(data.type==1){
	$("#talk_list_zan_"+talkid).html(data.num);
}

  });
});
}
</script>

<script>
function pinglun(talkid){
	$(document).ready(function(){
  $("#talk_pinglun").show();

     $(".talk_pinglun_ok_b").click(function(){
  var pinglun_text = $("#pinglun_text").val();
  $("#pinglun_text").val("");
    $("#talk_pinglun").hide();

  $.post("<?php  echo $this->createMobileUrl('talk_pinglun');?>",
  {	
	  talk_id:talkid,
	  pinglun_content:pinglun_text,
	  type:"2",
  },
  function(data,status){
	eval("var data="+data);
		$("#talk_list_ping_"+talkid).html(data.num);
$("#talk_list_pinglun_"+talkid).prepend(data.text);

  });
	 });

	});
}

</script>
<!--操作结束-->

<!--评论框开始-->


<style type="text/css">
#talk_pinglun{width:100%;height:100%;display:none;
position:relative;position:fixed;top:0px;left:0px;background-color:rgba(0,0,0,0.8);z-index:1000;}

#talk_pinglun_body{width:260px;height:211px;background-color:#FFF;border-radius:10px;
position:absolute;top:100px;left:50%;z-index:10000;
-webkit-transform:translateX(-50%);-ms-transform:translateX(-50%);-o-transform:translateX(-50%);transform:translateX(-50%);}

#talk_pinglun_textarea{width:240px;height:160px;margin:0px auto;}
#talk_pinglun_textarea textarea{width:98%;height:98%;border:none;margin:1% 1%;
text-align:left;line-height:40px;font-size:14px;color:#666;overflow:hidden;}

#talk_pinglun_ok{width:100%;height:50px;margin:0px auto;border-top:1px solid #999;position:relative;}
.talk_pinglun_ok_a{float:left;width:50%;height:50px;text-align:center;line-height:50px;font-size:16px;color:#000;overflow:hidden;}
.talk_pinglun_ok_b{float:right;width:50%;height:50px;text-align:center;line-height:50px;font-size:16px;color:#000;overflow:hidden;}

.talk_pinglun_ok_xian{width:1px;height:50px;background-color:#999;
position:absolute;top:0px;left:50%;z-index:100000;
-webkit-transform:translateX(-50%);-ms-transform:translateX(-50%);-o-transform:translateX(-50%);transform:translateX(-50%);}
</style>
<div id="talk_pinglun">
<div id="talk_pinglun_body">
<div id="talk_pinglun_textarea"><textarea id="pinglun_text" placeholder="请输入你的神回复..."></textarea></div>

<div id="talk_pinglun_ok">
<div class="talk_pinglun_ok_a">取消</div>
<div class="talk_pinglun_ok_b">发布</div>
<div class="talk_pinglun_ok_xian"></div>
</div>

</div>
</div>
<!--评论框结束-->