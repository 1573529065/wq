<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/chat.css">
<script type="text/Javascript" src="<?php echo MODULE_URL;?>public/jquery.min.js"></script>

<?php  if((empty($chat))) { ?>
<?php  echo getemptydata('还没有收到消息，赶快去其他会员主页发起聊天吧！',$this->createMobileUrl('fengmian'));?>
<?php  } else { ?>
<?php  } ?>

<div id="chat_list">

<!--客服开始-->
<?php  if(is_array($kefu)) { foreach($kefu as $key => $kefu) { ?>
<a href="<?php  echo $this->createMobileUrl('liaotian',array('openid'=>$kefu['openid']));?>">
<div id="chat_list_style">

<div class="chat_list_left"><div class="chat_list_left_pic"><img src="<?php echo MODULE_URL;?>public/images/kefu.png"/></div></div>

<div class="chat_list_center">
<div class="chat_list_center_nickname">客服<?php  echo $kefu['uid'];?>号[<?php  echo getnickname($_W['uniacid'],$kefu['openid'])?>]</div>
<div class="chat_list_center_content"><?php  echo $_W['account']['name'];?>客服，随时为您服务！</div>
</div>

<div class="chat_list_right">
<div class="chat_list_right_time"><?php  echo getgaptime($kefu['login_time']);?></div>
<?php  echo weidunews($_W['uniacid'],$_W['openid'],$chat['username']);?>
</div>



</div>
</a>
<?php  } } ?>
<!--客服结束-->

<?php  if(is_array($chat)) { foreach($chat as $key => $chat) { ?>
<a href="<?php  echo $this->createMobileUrl('liaotian',array('openid'=>$chat['username']));?>">
<div id="chat_list_style">

<div class="chat_list_left"><div class="chat_list_left_pic"><img src="<?php  echo getavatar($_W['uniacid'],$chat['username'])?>"/></div></div>

<div class="chat_list_center">
<div class="chat_list_center_nickname"><?php  echo getnickname($_W['uniacid'],$chat['username'])?></div>
<div class="chat_list_center_content"><?php  echo $chat['news_content'];?></div>
</div>

<div class="chat_list_right">
<div class="chat_list_right_time"><?php  echo getgaptime($chat['news_time']);?></div>
<?php  echo weidunews($_W['uniacid'],$_W['openid'],$chat['username']);?>
</div>



</div>
</a>
<?php  } } ?>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('footer', TEMPLATE_INCLUDEPATH)) : (include template('footer', TEMPLATE_INCLUDEPATH));?>