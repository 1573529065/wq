<?php defined('IN_IA') or exit('Access Denied');?><a href="<?php  echo $this->createMobileUrl('view',array('vid'=>getuid($_W['uniacid'],$visit['viewer_openid'])));?>">
<div class="visit_list_style">

<div class="visit_list_one">
<div class="visit_list_one_pic"><img src="<?php  echo getavatar($_W['uniacid'],$visit['viewer_openid']);?>"/></div>
</div>

<div class="visit_list_two">
<div class="visit_list_two_a"><?php  echo getnickname($_W['uniacid'],$visit['viewer_openid']);?></div>
<div class="visit_list_two_b"><?php  echo getmemberinfo($_W['uniacid'],$visit['viewer_openid']);?></div>
<div class="visit_list_two_c"><?php  echo getgaptime($visit['viewer_time']);?>来访</div>
</div>

<div class="visit_list_three">
<div class="visit_list_three_a" id="distance_<?php  echo getuid($_W['uniacid'],$visit['viewer_openid']);?>">0.00KM</div>
<div class="distance" style="display:none;"><?php  echo getuid($_W['uniacid'],$visit['viewer_openid']);?>,<?php  echo getuseraddress($_W['uniacid'],$visit['viewer_openid']);?></div>
<div class="visit_list_three_b"><?php  echo getgaptime(getlogintime($_W['uniacid'],$visit['viewer_openid']));?></div>
</div>



</div>
</a>