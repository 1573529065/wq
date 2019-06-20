<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $money['money_id'];?></td>




<td><?php  echo getmoneypid($money['money_pid']);?> <?php  echo getmoneystate($money['money_state']);?></td>

<td><span class="label label-success"><?php  echo getmoneytype($money['money_type']);?></span></td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$money['openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$money['openid']);?></td>



<td>
<?php  if($money['money_state']=="1"||$money['money_state']=="2") { ?>
<span class="label label-danger">￥：<?php  echo round($money['money_money'],4);?></span>
<?php  } else if($money['money_state']=="3"||$money['money_state']=="4") { ?>
<span class="label label-success">￥：<?php  echo round($money['money_money'],4);?></span>
<?php  } ?>
</td>


<td>
<?php  echo date('Y-m-d H:i:s',$money['money_time']);?><br/>
<?php  echo $money['money_ip'];?><br/>
<?php  echo $money['money_container'];?><br/>
<?php  echo $money['money_os'];?>
</td>



</tr>