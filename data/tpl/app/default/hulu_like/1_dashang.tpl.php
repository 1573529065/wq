<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/dashang.css">
<script type="text/Javascript" src="<?php echo MODULE_URL;?>template/mobile/style/dashang.js"></script>

<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'打赏','touming.png');?>
<!--顶部菜单导航结束-->

<script>
$(document).ready(function(){
   $(".dashang_list_style").click(function(){
  var h=$(this).find(".dashang_list_p_a").text();


    $.post("<?php  echo $this->createMobileUrl('dashang_money');?>",
    {
		type:"<?php  echo $type;?>",
      money:h,
      receive:"<?php  echo $user['openid'];?>",
    },
    function(data,status){
		eval("var data="+data);
		if(data.type==2){
			window.location.href=data.text;

		}
      //alert("数据：" + data + "\n状态：" + status);
    });
	
   });
   });
</script>

<!--顶部开始-->
<div id="dashang_top">

<div class="dashang_top_p"><?php  echo getnickname($_W['uniacid'],$user['openid']);?></div>

<div class="dashang_top_picture">
<div class="dashang_top_pic">
<img src="<?php  echo getavatar($_W['uniacid'],$user['openid']);?>"/>
</div>
</div>

</div>
<!--顶部结束-->

<div id="dashang_list">
<?php  if(is_array($dashang)) { foreach($dashang as $key => $dashang) { ?>
<div class="dashang_list_style">
<div class="dashang_list_p"><span class="dashang_list_p_a"><?php  echo $dashang['dashang_money'];?></span><span class="dashang_list_p_b">元</span></div>
</div>
<?php  } } ?>
</div>

<div id="dashang_more">自定义金额</div>

<div id="dashang_money">
<div id="dashang_money_body">

<div class="dashang_money_title">自定义金额</div>
<div class="dashang_money_off"></div>

<form action="" method="POST" onsubmit="return dashangchecksubmit();">

<div class="dashang_money_a">
<input type="number" name="money" placeholder="请输入打赏金额"/>
</div>

<div class="dashang_money_b">
<input type="submit" name="submit" value="支付"/>
</div>

<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>

</div>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>