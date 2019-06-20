<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/chongzhi.css">
 <script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/resource/js/lib/jquery-1.11.1.min.js"></script>


<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'充值'.$make['make_jinbi_name'],'touming.png');?>
<!--顶部菜单导航结束-->
<form action="" method="POST">

<div id="chongzhi_one">

<div class="chongzhi_one_a">-</div>

<div class="chongzhi_one_b">
<input type="number" min="1" name="chongzhi_jinbi" value="100" required="required"/>
</div>

<div class="chongzhi_one_c">+</div>

</div>

<div id="chongzhi_two">充值<span class="chongzhi_jinbi">100</span><?php  echo $make['make_jinbi_name'];?>，支付<span class="chongzhi_money">10</span>元人民币</div>

<div id="chongzhi_ok">
<input type="submit" name="submit" value="支付"/>
</div>

<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>

<script type="text/javascript">
$(document).ready(function(){
  $("input[name=chongzhi_jinbi]").keyup(function(){
	  var h=parseInt($("input[name=chongzhi_jinbi]").val());
	  var s=h/<?php  echo $make['make_jinbi_bili'];?>;
	  $(".chongzhi_jinbi").html(h);
  $(".chongzhi_money").html(s);
  });

$(".chongzhi_one_a").click(function(){
	var h=parseInt($("input[name=chongzhi_jinbi]").val());
	var n=h-1;
	$("input[name=chongzhi_jinbi]").val(n);

		  var s=n/<?php  echo $make['make_jinbi_bili'];?>;
	  $(".chongzhi_jinbi").html(n);
  $(".chongzhi_money").html(s);

});

$(".chongzhi_one_c").click(function(){
	var h=parseInt($("input[name=chongzhi_jinbi]").val());
	var m=h+1;
	$("input[name=chongzhi_jinbi]").val(m);

		  var s=m/<?php  echo $make['make_jinbi_bili'];?>;
	  $(".chongzhi_jinbi").html(m);
  $(".chongzhi_money").html(s);
});

});
</script>