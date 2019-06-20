<?php defined('IN_IA') or exit('Access Denied');?><tr>
<td><?php  echo $chat['news_id'];?></td>

<td>
<?php  if($chat['news_pid']=='1') { ?><span class="label label-danger">未读</span>
<?php  } else if($chat['news_pid']=='2') { ?><span class="label label-success">已读</span>
<?php  } else { ?><?php  } ?>
</td>

<td><?php  echo getnickname($_W['uniacid'],$chat['openid']);?></td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$chat['openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$chat['news_openid']);?></td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$chat['news_openid']);?>"/></td>

<td>
<?php  if($chat['news_type']=="1") { ?><?php  echo $chat['news_content'];?>
<?php  } else if($chat['news_type']=="4") { ?><img style="width:100px;height:100px;" src="<?php  echo $_W['attachurl'];?><?php  echo $chat['news_content'];?>"/>
<?php  } ?>
</td>

<td>
<?php  echo date('Y-m-d H:i:s',$chat['news_time']);?><br/>
<?php  echo $chat['news_ip'];?><br/>
<?php  echo $chat['news_container'];?><br/>
<?php  echo $chat['news_os'];?>
</td>


</tr>