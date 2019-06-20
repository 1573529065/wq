<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $present['present_id'];?></td>

<td><img style="width:80px;height:80px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$present['openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$present['openid']);?></td>

<td><img style="width:80px;height:80px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$present['present_send']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$present['present_send']);?></td>

<td><?php  echo getgiftname($_W['uniacid'],$present['gift_id']);?></td>

<td><img style="width:80px;height:80px;" src="<?php  echo $_W['attachurl'];?><?php  echo getgiftpicture($_W['uniacid'],$present['gift_id']);?>"/></td>

<td><span class="label label-success">￥：<?php  echo round(getgiftmoney($_W['uniacid'],$present['gift_id']),4);?></span></td>





<td>
<?php  echo date('Y-m-d H:i:s',$present['present_time']);?><br/>
<?php  echo $present['present_ip'];?><br/>
<?php  echo $present['present_container'];?><br/>
<?php  echo $present['present_os'];?>
</td>



</tr>