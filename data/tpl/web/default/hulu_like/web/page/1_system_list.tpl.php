<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $system['system_id'];?></td>




<td><?php  echo getmoneypid($system['system_pid']);?> <?php  echo getmoneystate($system['system_state']);?></td>

<td><span class="label label-success"><?php  echo getmoneytype($system['system_type']);?></span></td>



<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$system['openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$system['openid']);?></td>

<td>
<span class="label label-success"><?php  echo round($system['system_money'],4);?></span>
</td>

<td>
<?php  echo date('Y-m-d H:i:s',$system['system_time']);?><br/>
<?php  echo $system['system_ip'];?><br/>
<?php  echo $system['system_container'];?><br/>
<?php  echo $system['system_os'];?>
</td>

<td>
</td>

</tr>