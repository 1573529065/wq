<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $share['share_id'];?></td>


<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$share['openid']);?>"/></td>
<td><?php  echo getnickname($_W['uniacid'],$share['openid']);?></td>


<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$share['share_openid']);?>"/></td>


<td><?php  echo getnickname($_W['uniacid'],$share['share_openid']);?></td>




<td>
<?php  echo date('Y-m-d H:i:s',$share['share_time']);?><br/>
<?php  echo $share['share_ip'];?><br/>
<?php  echo $share['share_container'];?><br/>
<?php  echo $share['share_os'];?>
</td>



</tr>