<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
    <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/picture1.css">
<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'上传视频','touming.png');?>
<!--顶部菜单导航结束-->
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('picture_upload_video', TEMPLATE_INCLUDEPATH)) : (include template('picture_upload_video', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>

