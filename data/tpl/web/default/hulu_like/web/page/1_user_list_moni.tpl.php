<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $user['uid'];?></td>

<td><?php  echo $user['nickname'];?></td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'], $user['openid']);?>"/></td>

<td>
<?php  if($user['upid']=='4') { ?><span class="label label-danger">VIP</span><br/><?php  echo date('Y-m-d H:i:s',$user['vip_endtime']);?>
<?php  } else if($user['upid']=='3') { ?><span class="label label-info">普通会员</span>
<?php  } else if($user['upid']=='2') { ?><span class="label label-warning">待审核</span>
<?php  } else if($user['upid']=='1') { ?><span class="label label-default">黑名单</span>
<?php  } else { ?><?php  } ?>
</td>

<td>
<?php  if($user['sex']=='0') { ?><span class="label label-default" onclick="chg_sex(1,<?php  echo $user['uid'];?>)" id="sex_<?php  echo $user['uid'];?>">未知</span>
<?php  } else if($user['sex']=='1') { ?><span class="label label-primary" onclick="chg_sex(2,<?php  echo $user['uid'];?>)" id="sex_<?php  echo $user['uid'];?>">男</span>
<?php  } else if($user['sex']=='2') { ?><span class="label label-danger" onclick="chg_sex(1,<?php  echo $user['uid'];?>)" id="sex_<?php  echo $user['uid'];?>">女</span>
<?php  } else { ?><?php  } ?>
</td>



<td>
<?php echo $user['login_time'] ? date('Y-m-d H:i:s',$user['login_time']) : '元';?><br/>
<?php  echo $user['login_ip'];?><br/>
<?php  echo $user['login_container'];?><br/>
<?php  echo $user['login_os'];?>
</td>

<td>
<?php  echo date('Y-m-d H:i:s',$user['reg_time']);?><br/>
<?php  echo $user['reg_ip'];?>
</td>
<td style="width:20px">
<?php  echo qcode($user['openid']); ?>
</td>

<td>

<a class="btn btn-default" href="<?php  echo $this->createWebUrl('user_view',array('openid'=>$user['openid']));?>" role="button" title="详情">
<i class="fa fa-search fa-fw"></i>
</a>

<?php  if($user['upid']!='4') { ?>
<a class="btn btn-default" href="<?php  echo $this->createWebUrl('user_update',array('openid'=>$user['openid'],'upid'=>'4'));?>" role="button" title="置为VIP">
VIP
</a>
<?php  } else { ?>
<a class="btn btn-default" href="<?php  echo $this->createWebUrl('user_update',array('openid'=>$user['openid'],'upid'=>'3'));?>" role="button" title="置为普通">
普
</a>
<?php  } ?>

<?php  if(($user['upid']=='2')||($user['upid']=='1')) { ?>
<a class="btn btn-default" href="<?php  echo $this->createWebUrl('user_update',array('openid'=>$user['openid'],'upid'=>'3'));?>" role="button" title="置为普通">
<i class="fa fa-check fa-fw"></i>
</a>
<?php  } else { ?><?php  } ?>

<?php  if(($user['upid']=='2')||($user['upid']=='3')) { ?>
<a class="btn btn-default" href="<?php  echo $this->createWebUrl('user_update',array('openid'=>$user['openid'],'upid'=>'1'));?>" role="button" title="置为黑名单">
<i class="fa fa-times fa-fw"></i>
</a>
<?php  } else { ?><?php  } ?>


<?php  if(($user['kefu_if']=='1')) { ?>
<a class="btn btn-success" href="<?php  echo $this->createWebUrl('user_xiugai',array('openid'=>$user['openid'],'type'=>'kefu','value'=>'2'));?>" role="button" title="置为客服">
客
</a>
<?php  } else if(($user['kefu_if']=='2')) { ?>
<a class="btn btn-danger" href="<?php  echo $this->createWebUrl('user_xiugai',array('openid'=>$user['openid'],'type'=>'kefu','value'=>'1'));?>" role="button" title="置为客服">
客
</a>
<?php  } else { ?>
<?php  } ?>


<?php  if(($user['user_share']=='1')) { ?>
<a class="btn btn-success" href="<?php  echo $this->createWebUrl('user_xiugai',array('openid'=>$user['openid'],'type'=>'share','value'=>'2'));?>" role="button" title="置为推广员">
推
</a>
<?php  } else if(($user['user_share']=='2')) { ?>
<a class="btn btn-danger" href="<?php  echo $this->createWebUrl('user_xiugai',array('openid'=>$user['openid'],'type'=>'share','value'=>'1'));?>" role="button" title="取消推广员">
普
</a>
<?php  } else { ?>
<?php  } ?>


<a onclick="delcfm()"  title="删除会员" class="btn btn-default" href="<?php  echo $this->createWebUrl('user_del',array('openid'=>$user['openid']));?>" role="button"><i class="fa fa-trash-o fa-fw"></i></a>

</td>

</tr>