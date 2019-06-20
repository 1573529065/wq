<?php defined('IN_IA') or exit('Access Denied');?><?php  if($_W['openid']==$news['openid']) { ?>
    <?php  if($news['news_type']=="1") { ?>
    <div id="news_list_right">
    <div class="news_right_avatar"><div class="news_right_avatar_pic"><img src="<?php  echo getavatar($_W['uniacid'],$news['openid']);?>"/></div></div>
    <div class="news_right_content"><div class="news_right_content_p"><?php echo $chat_num_replace != '' ? chat_num_replace($news['news_content'],$chat_num_replace) : $news['news_content'];?></div></div>
    </div>
    <?php  } else if($news['news_type']=="4") { ?>
    <div id="news_list_right">
    <div class="news_right_avatar"><div class="news_right_avatar_pic"><img src="<?php  echo getavatar($_W['uniacid'],$news['openid']);?>"/></div></div>
    <div class="news_right_content"><div class="news_right_content_p"><img style="max-width:200px;auto;" src="<?php  echo $_W['attachurl'];?><?php  echo $news['news_content'];?>"/></div></div>
    </div>
    <?php  } ?>
<?php  } else { ?>
    <?php  if($news['news_type']=="1") { ?>
    <div id="news_list_left">
    <div class="news_left_avatar"><div class="news_left_avatar_pic"><img src="<?php  echo getavatar($_W['uniacid'],$news['openid']);?>"/></div></div>
    <div class="news_left_content"><div class="news_left_content_p"><?php echo $chat_num_replace != '' ? chat_num_replace($news['news_content'],$chat_num_replace) : $news['news_content'];?></div></div>
    </div>
    <?php  } else if($news['news_type']=="4") { ?>
    <div id="news_list_left">
    <div class="news_left_avatar"><div class="news_left_avatar_pic"><img src="<?php  echo getavatar($_W['uniacid'],$news['openid']);?>"/></div></div>
    <div class="news_left_content"><div class="news_left_content_p"><img style="max-width:200px;auto;" src="<?php  echo $_W['attachurl'];?><?php  echo $news['news_content'];?>"/></div></div>
    </div>
    <?php  } ?>
<?php  } ?>

