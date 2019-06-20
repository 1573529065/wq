<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $pinglun['pinglun_id'];?></td>





<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$pinglun['openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$pinglun['openid']);?></td>

<td>【<?php  echo $pinglun['talk_id'];?>】<?php  echo $pinglun['pinglun_content'];?></td>

<td><?php  echo gettalkcontent($_W['uniacid'],$pinglun['talk_id']);?></td>

<td>
<?php  echo date('Y-m-d H:i:s',$pinglun['pinglun_time']);?><br/>
<?php  echo $pinglun['pinglun_ip'];?><br/>
<?php  echo $pinglun['pinglun_container'];?><br/>
<?php  echo $pinglun['pinglun_os'];?>
</td>



</tr>