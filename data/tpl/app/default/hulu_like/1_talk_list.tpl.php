<?php defined('IN_IA') or exit('Access Denied');?><div id="talk_list_style">


<!--说说昵称开始-->
<a href="<?php  echo $this->createMobileUrl(view,array('vid'=>getuid($_W['uniacid'],$talk['openid'])));?>">
<div class="talk_list_left">

<div class="talk_list_left_pic">
<div class="talk_list_left_pic_img">
<?php  $img = getImg($_W['uniacid'],$talk['openid']);?>
 <?php  if(empty($img)) { ?>
<img src="<?php  echo getavatar($_W['uniacid'],$talk['openid']);?>"/>
<?php  } else { ?>
<img src="<?php  echo $_W['attachurl'].$img;?>"/>
<?php  } ?>

</div>
</div>

<div class="talk_list_left_p1">
<?php  echo getnickname($_W['uniacid'],$talk['openid']);?>
</div>

<div class="talk_list_left_p2">
<?php  echo getmemberinfo($_W['uniacid'],$talk['openid']);?>
</div>

</div>
</a>
<!--说说昵称结束-->


<!--说说正文开始-->
<div class="talk_list_right">

<!--说说内容开始-->
<a href="javascript:;<?php  //echo $this->createMobileUrl('talk_view',array('vid'=>$talk['talk_id']));?>">
<div class="talk_list_right_1"><?php echo $chat_num_replace != '' ? chat_num_replace($talk['talk_content'],$chat_num_replace) : $talk['talk_content'];?></div>
</a>
<!--说说内容结束-->

<!--说说图片开始-->
<?php 
$pic=getpicture($_W['uniacid'],$talk['talk_id'],'talk');
?>
<?php  if((empty($talk['talk_pic1']))&&(empty($talk['talk_pic2']))&&(empty($talk['talk_pic3']))&&(empty($pic))) { ?>
<?php  } else { ?>


<div id="talk_list_right_2_<?php  echo $talk['talk_id'];?>" class="talk_list_right_2">

<?php  if(is_array(getpicture($_W['uniacid'],$talk['talk_id'],'talk'))) { foreach(getpicture($_W['uniacid'],$talk['talk_id'],'talk') as $key => $picture) { ?>
<?php  if(image_exists($_W['attachurl'].$picture)) { ?>
<div class="talk_list_right_2_pic"><img src="<?php  echo $_W['attachurl'];?><?php  echo $picture;?>"/></div>
<?php  } ?>
<?php  } } ?>

<?php  if((!empty($talk['talk_pic1']))) { ?><div class="talk_list_right_2_pic"><img src="<?php  echo $_W['attachurl'];?><?php  echo $talk['talk_pic1'];?>"/></div><?php  } ?>
<?php  if((!empty($talk['talk_pic2']))) { ?><div class="talk_list_right_2_pic"><img src="<?php  echo $_W['attachurl'];?><?php  echo $talk['talk_pic2'];?>"/></div><?php  } ?>
<?php  if((!empty($talk['talk_pic3']))) { ?><div class="talk_list_right_2_pic"><img src="<?php  echo $_W['attachurl'];?><?php  echo $talk['talk_pic3'];?>"/></div><?php  } ?>
</div>

<?php  } ?>
<!--说说图片结束-->

<?php  if($talk['talk_weizhi']=='1') { ?>
<a href="javascript:;" onclick="show_map('<?php  echo $this->createMobileUrl('weizhi',array('type'=>'talk','vid'=>$talk['talk_id']));?>');">
<div class="talk_list_right_weizhi">
<div class="talk_list_right_weizhi_left"><div class="talk_list_right_weizhi_pic"><img src="<?php echo MODULE_URL;?>public/images/ditu1.png"/></div></div>
<div class="talk_list_right_weizhi_right"><?php  echo $talk['talk_address'];?></div>
</div>
</a>
<?php  } ?>

<div class="talk_list_right_3">

<div class="talk_list_right_3_a"><?php  echo getgaptime($talk['talk_time']);?></div>

<a href="<?php  echo $this->createMobileUrl('dashang',array('type'=>'2','talk_id'=>$talk['talk_id'],'receive'=>$talk['openid']));?>">
<div class="talk_list_right_3_b">
<div class="talk_list_right_3_b_style">
<div class="talk_list_right_3_b_pic"><div class="talk_list_right_3_b_pic_img"><img src="<?php echo MODULE_URL;?>public/images/dashang.png"/></div></div>
<div class="talk_list_right_3_b_p">赏</div>
</div>
</div>
</a>

<div onclick="dianzan('<?php  echo $talk['talk_id'];?>');" class="talk_list_right_3_b">
<div class="talk_list_right_3_b_style">
<div class="talk_list_right_3_b_pic"><div class="talk_list_right_3_b_pic_img"><img src="<?php echo MODULE_URL;?>public/images/zan.png"/></div></div>
<div class="talk_list_right_3_b_p">赞</div>
<div class="talk_list_right_3_b_n" id="talk_list_zan_<?php  echo $talk['talk_id'];?>"><?php  echo gettalkzannum($_W['uniacid'],$talk['talk_id']);?></div>
</div>
</div>

<div class="talk_list_right_3_b">
</div>


</div>


<!--说说评论开始-->
<div class="talk_list_pinglun" id="talk_list_pinglun_<?php  echo $talk['talk_id'];?>">
<?php  if(is_array(gettalkpinglun($_W['uniacid'],$talk['talk_id']))) { foreach(gettalkpinglun($_W['uniacid'],$talk['talk_id']) as $key => $pinglun) { ?>
<div class="talk_list_pinglun_style">
<div class="talk_list_pinglun_avatar">
<img src="<?php  echo getavatar($_W['uniacid'],$pinglun['openid']);?>"/>
</div>
<div onclick="alert('<?php  echo $pinglun['pinglun_content'];?>');" class="talk_list_pinglun_p">
<?php  echo $pinglun['pinglun_content'];?>
</div>
</div>
<?php  } } ?>
</div>

<!--说说评论结束-->

<?php  if(($talk['openid']==$_W['openid'])&&($_GPC['do']=='talk_my')) { ?><a href="<?php  echo $this->createMobileUrl('talk_del',array('talk_id'=>$talk['talk_id']));?>">
<div class="talk_list_del"><div class="talk_list_del_pic"><img src="<?php echo MODULE_URL;?>public/images/trash.png"/></div></div>
</a><?php  } ?>

</div>
<!--说说正文结束-->

 </div>

<?php  $user_pics = getpicture($_W['uniacid'],$talk['talk_id'],'talk');?>

<?php  if($user_pics) { ?>
 <script>
   document.querySelector('#talk_list_right_2_<?php  echo $talk['talk_id'];?>').onclick = function () {
    wx.previewImage({
      current: '',
      urls: [
	  <?php  if(is_array($user_pics)) { foreach($user_pics as $key => $picture) { ?>'<?php  echo $_W['attachurl'].$picture;?>',<?php  } } ?>
	  <?php  if((!empty($talk['talk_pic1']))) { ?>'<?php  echo $_W['attachurl'];?><?php  echo $talk['talk_pic1'];?>',<?php  } else { ?><?php  } ?>
	  <?php  if((!empty($talk['talk_pic2']))) { ?>'<?php  echo $_W['attachurl'];?><?php  echo $talk['talk_pic2'];?>',<?php  } else { ?><?php  } ?>
	  <?php  if((!empty($talk['talk_pic3']))) { ?>'<?php  echo $_W['attachurl'];?><?php  echo $talk['talk_pic3'];?>',<?php  } else { ?><?php  } ?>
      ]
    });
  };
 </script><?php  } ?>