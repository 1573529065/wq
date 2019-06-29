<?php defined('IN_IA') or exit('Access Denied');?><!--会员列表开始-->


<?php  if(is_array($user)) { foreach($user as $key => $user) { ?>
<a href="<?php  echo $this->createMobileUrl('view',array('vid'=>$user['uid']));?>">
    <div id="user_list_style">

        <div class="user_list_a">
            <div class="user_list_a_avatar">
                <?php  if(empty($user['user_img'])) { ?>
                <img src="<?php  echo getavatar($_W['uniacid'], $user['openid']);?>"/>
                <?php  } else { ?>
                <img src="<?php  echo $_W['attachurl'].$user['user_img'];?>"/>
                <?php  } ?>
            </div>
        </div>

        <div class="user_list_b">
            <?php  if($user['sex']=='1') { ?>
            <div class="user_list_b_1 user_list_b_1_blue" style="height:25px"><?php  echo $user['nickname'];?>
                <?php  if($user['upid']=='4') { ?>
                <img src="<?php echo MODULE_URL;?>public/images/vip.png" style="width:20px;height:20px">
                <?php  } ?>
            </div>
            <?php  } else if($user['sex']=='2') { ?>
            <div class="user_list_b_1 user_list_b_1_red" style="height:25px"><?php  echo $user['nickname'];?>
                <?php  if($user['upid']=='4') { ?>
                <img src="<?php echo MODULE_URL;?>public/images/vip.png" style="width:20px;height:20px">
                <?php  } ?>
            </div>
            <?php  } else if($user['sex']=='0') { ?>
            <div class="user_list_b_1 user_list_b_1_black" style="height:25px"><?php  echo $user['nickname'];?>
                <?php  if($user['upid']=='4') { ?>
                <img src="<?php echo MODULE_URL;?>public/images/vip.png" style="width:20px;height:20px">
                <?php  } ?>
            </div>
            <?php  } else { ?><?php  } ?>
            <div class="user_list_b_2"><?php  echo getmemberinfo($_W['uniacid'],$user['openid']);?></div>
            <div class="user_list_b_3"><?php  echo getmembercontent($_W['uniacid'],$user['openid']);?></div>
            <div class="user_list_b_4">
                <?php  echo getusertag($_W['uniacid'],$user['openid']);?>
                <!--
                <div class="user_list_b_4_p">VIP</div>
                <div class="user_list_b_4_p">实名</div>
                <div class="user_list_b_4_p">单身</div>
                <div class="user_list_b_4_p">交友</div>
                -->

            </div>
        </div>

        <div class="user_list_c">
            <!--
            <div id="distance_<?php  echo $user['uid'];?>" class="user_list_c_1">

            0.00KM
            </div>
            -->
            <div class="distance" style="display:none;"><?php  echo $user['uid'];?>,<?php  echo $user['address'];?></div>
            <!--<div class="user_list_c_4"><?php  echo getgaptime($user['login_time']);?></div>-->
        </div>


    </div>
</a>
<?php  } } ?>


<!--会员列表结束-->

