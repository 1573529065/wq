<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/active.css">


<!--轮播广告开始-->
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('banner', TEMPLATE_INCLUDEPATH)) : (include template('banner', TEMPLATE_INCLUDEPATH));?>
<!--轮播广告结束-->

<div id="active_fabu">
<a href="<?php  echo $this->createMobileUrl('active_add');?>">
<div class="active_fabu_pic"></div>
</a>
</div>

<div id="active_top">
<a href="<?php  echo $this->createMobileUrl('active',array('type'=>'3'));?>">
<div class="active_top_style">
<div class="active_top_p">报名中</div>
</div>
</a>
<a href="<?php  echo $this->createMobileUrl('active',array('type'=>'4'));?>">
<div class="active_top_style">
<div class="active_top_p">进行中</div>
</div>
</a>
<a href="<?php  echo $this->createMobileUrl('active',array('type'=>'5'));?>">
<div class="active_top_style">
<div class="active_top_p">已结束</div>
</div>
</a>

<a href="<?php  echo $this->createMobileUrl('active',array('type'=>'6'));?>">
<div class="active_top_style">
<div class="active_top_p">我发起的</div>
</div>
</a>

</div>




<?php  if(empty($active)) { ?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('emptydata', TEMPLATE_INCLUDEPATH)) : (include template('emptydata', TEMPLATE_INCLUDEPATH));?><?php  } ?>

<div id="active_list">
<?php  if(is_array($active)) { foreach($active as $key => $active) { ?>
 <?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('active_list', TEMPLATE_INCLUDEPATH)) : (include template('active_list', TEMPLATE_INCLUDEPATH));?>
<?php  } } ?>
</div>



 <script type="text/javascript">
$(document).ready(function(){
	var h="<?php  echo $type-3;?>";
	
$(".active_top_p:eq("+h+")").addClass("active_top_p_new");

});
</script>

 <?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('footer', TEMPLATE_INCLUDEPATH)) : (include template('footer', TEMPLATE_INCLUDEPATH));?>