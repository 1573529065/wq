<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $active['active_id'];?></td>

<td><?php  echo getactivepid($active['active_pid']);?></td>


<td><?php  echo getnickname($_W['uniacid'],$active['openid']);?></td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$active['openid']);?>"/></td>


<td>
<?php  echo getactivetype($active['active_type']);?><br/>
<?php  echo $active['active_title'];?><br/>
<?php  echo $active['active_address'];?></td>

<td>
<?php  echo getactivejoin($_W['uniacid'],$active['active_id']);?>
</td>

<td><span class='label label-success'><?php  echo round($active['active_money'],2);?></span><br/><?php  echo $active['active_content'];?></td>


<td><?php  echo $active['active_wechat'];?><br/><?php  echo $active['active_tel'];?></td>



<td>
<?php  echo date('Y-m-d H:i:s',$active['active_starttime']);?><br/>
<?php  echo date('Y-m-d H:i:s',$active['active_endtime']);?>
</td>

<td>
<?php  echo date('Y-m-d H:i:s',$active['active_time']);?><br/>
<?php  echo $active['active_ip'];?><br/>
<?php  echo $active['active_container'];?><br/>
<?php  echo $active['active_os'];?>
</td>

<td>

<a class="btn btn-default" href="<?php  echo $this->createWebUrl('active_update',array('active_id'=>$active['active_id'],'active_pid'=>'3'));?>" role="button">
<i class="fa fa-check fa-fw"></i>
</a>

<a class="btn btn-default" href="<?php  echo $this->createWebUrl('active_update',array('active_id'=>$active['active_id'],'active_pid'=>'1'));?>" role="button">
<i class="fa fa-times fa-fw"></i>
</a>

</td>

</tr>