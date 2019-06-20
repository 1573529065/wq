<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $viewer['viewer_id'];?></td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$viewer['openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$viewer['openid']);?></td>


<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$viewer['viewer_openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$viewer['viewer_openid']);?></td>

<td>
<?php  echo date('Y-m-d H:i:s',$viewer['viewer_time']);?><br/>
<?php  echo $viewer['viewer_ip'];?><br/>
<?php  echo $viewer['viewer_container'];?><br/>
<?php  echo $viewer['viewer_os'];?>
</td>

</tr>