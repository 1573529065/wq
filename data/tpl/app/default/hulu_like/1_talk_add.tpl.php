<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/talk_add.css">
<script type="text/javascript" src="<?php echo MODULE_URL;?>template/mobile/style/luyin.js"></script>


<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('talk'),'发布说说','touming.png');?>
<!--顶部菜单导航结束-->



<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('ditu', TEMPLATE_INCLUDEPATH)) : (include template('ditu', TEMPLATE_INCLUDEPATH));?>


 <!---->
 <form action="" method="POST">


 <div id="talk_add_one">

 <div class="talk_add_one_a"><textarea name="talk_content" placeholder="这一刻的想法..." required="required"></textarea></div>


<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('picture_many', TEMPLATE_INCLUDEPATH)) : (include template('picture_many', TEMPLATE_INCLUDEPATH));?> 

</div>

<div id="talk_add_two">
<div class="talk_add_two_ok"><input type="submit" name="submit" value="发 布"/></div>
</div>




<div id="hulu_yuyin">
<div class="hulu_yuyin_left"><div class="hulu_yuyin_pic"><img src="<?php echo MODULE_URL;?>public/images/yuyin.png"/></div></div>
<div class="hulu_yuyin_center">开始录音</div>
<div class="hulu_yuyin_right">结束录音</div>
</div>

<div id="hulu_map">
<div class="hulu_map_left"><div class="hulu_map_pic"></div></div>
<div class="hulu_map_center">定位中...</div>
<div class="hulu_map_right"></div>
</div>



<input id="talk_weizhi" type="hidden" name="talk_weizhi" value="1"/>
<input id="talk_jingwei" type="hidden" name="talk_jingwei" value=""/>
<input id="talk_address" type="hidden" name="talk_address" value=""/>

<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
 </form>
 <!---->
	<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>


	