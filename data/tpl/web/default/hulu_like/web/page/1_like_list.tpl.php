<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $like['like_id'];?></td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$like['openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$like['openid']);?></td>


<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$like['like_openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$like['like_openid']);?></td>

<td>
<?php  echo date('Y-m-d H:i:s',$like['like_time']);?><br/>
<?php  echo $like['like_ip'];?><br/>
<?php  echo $like['like_container'];?><br/>
<?php  echo $like['like_os'];?>
</td>

</tr>