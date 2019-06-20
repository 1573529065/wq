<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $order['order_id'];?></td>



<td><?php  echo getnickname($_W['uniacid'],$order['openid']);?></td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$order['openid']);?>"/></td>

<td>
<?php  if($order['order_pid']=='1') { ?><span class="label label-danger">未支付</span>
<?php  } else if($order['order_pid']=='2') { ?><span class="label label-success">已支付</span>
<?php  } else { ?><?php  } ?>
</td>

<td>
<?php  echo getmoneytype($order['order_type']);?>
</td>

<td><?php  echo $order['order_money'];?></td>

<td><?php  echo $order['order_num'];?></td>


<td>
<?php  echo date('Y-m-d H:i:s',$order['order_starttime']);?><br/>
<?php  echo date('Y-m-d H:i:s',$order['order_endtime']);?>
</td>

<td>

<?php  echo $order['order_ip'];?><br/>
<?php  echo $order['order_container'];?><br/>
<?php  echo $order['order_os'];?>
</td>

<td>

</td>

</tr>