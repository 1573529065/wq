<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
  <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/real.css">
<script type="text/javascript" src="<?php echo MODULE_URL;?>public/jquery.min.js"></script>

<!--顶部菜单导航开始-->

<?php  echo topmenu($this->createMobileUrl('my'),'实名认证','touming.png');?>

<!--顶部菜单导航结束-->

<div id="real_one">
<form action="" method="POST">

<div id="real_one_style">
<div class="real_one_a"><input id="real_one_a_input" type="number" name="real_tel" placeholder="请输入手机号码" required="required"/></div>
<div class="real_one_b"><div class="real_one_b_p">发送</div></div>
</div>

<div id="real_one_style">
<div class="real_one_c"><input type="number" name="real_code" placeholder="请输入验证码" required="required"/></div>
</div>

<?php  if($make['look_user_tel_type']==1) { ?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('picture_upload', TEMPLATE_INCLUDEPATH)) : (include template('picture_upload', TEMPLATE_INCLUDEPATH));?>
<?php  } ?>
<div id="real_one_style">
<div class="real_one_d"><input type="submit" name="submit" value="验 证"/></div>
</div>

<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>
</div>


<script>
$(document).ready(function(){
  $(".real_one_b_p").click(function(){
	  var tel = $("#real_one_a_input").val();
    $.post("<?php  echo $this->createMobileUrl('real_tel');?>",
    {

      real_tel:tel,
	  real_code:"<?php  echo $authcode;?>",
    },
    function(data,status){
      $(".real_one_b_p").html('已发送');
	  alert(data);
    });
  });
});
</script>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>