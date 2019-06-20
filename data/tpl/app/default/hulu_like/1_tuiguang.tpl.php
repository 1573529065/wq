<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
 <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/tuiguang.css">
 


<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'推广二维码','touming.png');?>
<!--顶部菜单导航结束-->
<div id="tuiguang_pic" style='background-repeat: no-repeat;background-size: cover;-webkit-background-size: cover;-o-background-size: cover;background-image:url(http://www.ulxwtf23361.cn/attachment/images/qr.png);width:100%;height:580px;margin:0;padding:0;'>
<img src="<?php  echo $this->createMobileUrl('qrcode');?>" style="width:10rem;height:10rem;margin-top:40%;margin-left:25px"/>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>