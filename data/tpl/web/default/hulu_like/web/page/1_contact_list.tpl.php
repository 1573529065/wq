<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $contact['contact_id'];?></td>


<td><?php  echo getnickname($_W['uniacid'],$contact['openid']);?></td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$contact['openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$contact['contact_openid']);?></td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$contact['contact_openid']);?>"/></td>




<td>
<?php  echo date('Y-m-d H:i:s',$contact['contact_time']);?><br/>
<?php  echo $contact['contact_ip'];?><br/>
<?php  echo $contact['contact_container'];?><br/>
<?php  echo $contact['contact_os'];?>
</td>

<td>

</td>

</tr>