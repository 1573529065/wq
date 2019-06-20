<?php defined('IN_IA') or exit('Access Denied');?><a href="<?php  echo $this->createMobileUrl('active_view',array('active_id'=>$active['active_id']));?>">
<div id="active_list_style">

<div class="active_list_left"><div class="active_list_left_pic"><img src="<?php  echo getavatar($_W['uniacid'],$active['openid']);?>"/></div></div>

<div class="active_list_right">
<div class="active_list_right_a"><?php  echo $active['active_title'];?></div>
<div class="active_list_right_b">活动人数：<span><?php  echo $active['active_boy']+$active['active_girl'];?></span></div>
<div class="active_list_right_b">活动地点：<span><?php  echo $active['active_address'];?></span></div>
<div class="active_list_right_c">活动费用：<span><?php  echo round($active['active_money'],2);?>元</span></div>
<div class="active_list_right_c">开始时间：<span><?php  echo date('m-d H:i',$active['active_starttime']);?></span></div>
</div>

</div>
</a>