<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $talk['talk_id'];?></td>

<td>

<?php  if($talk['talk_pid']=='3') { ?><span class="label label-success">显示</span>
<?php  } else if($talk['talk_pid']=='2') { ?><span class="label label-danger">待审核</span>
<?php  } else if($talk['talk_pid']=='1') { ?><span class="label label-default">屏蔽</span>
<?php  } else { ?><?php  } ?>

<?php  if($talk['talk_did']=='2') { ?><span class="label label-danger">顶</span>
<?php  } ?>
</td>

<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$talk['openid']);?>"/></td>
<td><?php  echo getnickname($_W['uniacid'],$talk['openid']);?></td>

<td><?php  echo $talk['talk_content'];?></td>

<td>
<?php  if(is_array(getpicture($_W['uniacid'],$talk['talk_id'],"talk"))) { foreach(getpicture($_W['uniacid'],$talk['talk_id'],"talk") as $key => $picture) { ?>
<img style="width:80px;height:80px;" src="<?php  echo $_W['attachurl'];?><?php  echo $picture;?>"/>
<?php  } } ?>
</td>

<td>
<?php  if($talk['talk_weizhi']=='1') { ?><span class="label label-success">显示</span>
<?php  } else if($talk['talk_weizhi']=='2') { ?><span class="label label-danger">隐藏</span>
<?php  } ?>
<br/>
<?php  echo $talk['talk_jingwei'];?><br/>
<?php  echo $talk['talk_address'];?></td>

<td>
<?php  echo date('Y-m-d H:i:s',$talk['talk_time']);?><br/>
<?php  echo $talk['talk_ip'];?><br/>
<?php  echo $talk['talk_container'];?><br/>
<?php  echo $talk['talk_os'];?>
</td>


<td>

<?php  if($talk['talk_pid']=='2') { ?>
<a class="btn btn-default" href="<?php  echo $this->createWebUrl('talk_update',array('talk_id'=>$talk['talk_id'],'talk_pid'=>'1'));?>" role="button">
<i class="fa fa-times fa-fw"></i>
</a>

<a class="btn btn-default" href="<?php  echo $this->createWebUrl('talk_update',array('talk_id'=>$talk['talk_id'],'talk_pid'=>'3'));?>" role="button">
<i class="fa fa-check fa-fw"></i>
</a>

<?php  } else if($talk['talk_pid']=='3') { ?>

<a class="btn btn-default" href="<?php  echo $this->createWebUrl('talk_update',array('talk_id'=>$talk['talk_id'],'talk_pid'=>'1'));?>" role="button">
<i class="fa fa-times fa-fw"></i>
</a>

<?php  } else if($talk['talk_pid']=='1') { ?>

<a class="btn btn-default" href="<?php  echo $this->createWebUrl('talk_update',array('talk_id'=>$talk['talk_id'],'talk_pid'=>'3'));?>" role="button">
<i class="fa fa-times fa-fw"></i>
</a>

<?php  } ?>
<a class="btn btn-default" href="<?php  echo $this->createWebUrl('talk_del',array('talk_id'=>$talk['talk_id']));?>" role="button">
<i class="fa fa-trash-o fa-fw"></i>
</a>

</td>

</tr>