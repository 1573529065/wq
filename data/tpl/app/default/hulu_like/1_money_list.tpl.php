<?php defined('IN_IA') or exit('Access Denied');?><div class="money_list_style">

<div class="money_list_one">
<div class="money_list_one_a"><?php  echo date('H:i',$money['money_time']);?></div>
<div class="money_list_one_b"><?php  echo date('m-d',$money['money_time']);?></div>
</div>

<div class="money_list_two">
<div class="money_list_two_pic"><img src="<?php  echo getavatar($_W['uniacid'],$money['openid']);?>"/></div>
</div>


<div class="money_list_three">
<div class="money_list_three_a">￥：<?php  echo round($money['money_money'],4);?></div>
<div class="money_list_three_b">
<?php  if($money['money_state']=="2") { ?>
<?php  if($money['money_pid']=="1") { ?>失败：<?php  echo $money['money_content'];?>
<?php  } else if($money['money_pid']=="2") { ?>审核中
<?php  } else if($money['money_pid']=="3") { ?>成功
<?php  } ?>
<?php  } else { ?>
<?php  echo getordertype($money['money_type']);?>
<?php  } ?>
</div>
</div>


</div>