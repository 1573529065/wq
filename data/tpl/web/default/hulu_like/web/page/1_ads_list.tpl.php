<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $ads['ads_id'];?></td>


<td>
<?php  if($ads['ads_pid']=='1') { ?><span class="label label-success">显示</span>
<?php  } else if($ads['ads_pid']=='2') { ?><span class="label label-danger">隐藏</span>

<?php  } else { ?>
<?php  } ?>
</td>

<td><?php  echo $ads['ads_did'];?></td>

<td><?php  echo $ads['ads_title'];?></td>

<td><img style="height:100px;" src="<?php  echo $_W['attachurl'];?><?php  echo $ads['ads_pic'];?>"/></td>

<td><?php  echo $ads['ads_link'];?></td>



<td>
<?php  echo date('Y-m-d H:i:s',$ads['ads_time']);?><br/>
<?php  echo $ads['ads_ip'];?>

</td>

<td>


<?php  if($ads['ads_pid']=='2') { ?>
<a class="btn btn-default" href="<?php  echo $this->createWebUrl('ads_update',array('ads_id'=>$ads['ads_id'],'ads_pid'=>'1'));?>" role="button"><i class="fa fa-check fa-fw"></i></a>
<?php  } else if($ads['ads_pid']=='1') { ?>
<a class="btn btn-default" href="<?php  echo $this->createWebUrl('ads_update',array('ads_id'=>$ads['ads_id'],'ads_pid'=>'2'));?>" role="button"><i class="fa fa-times fa-fw"></i></a>
<?php  } else { ?><?php  } ?>

<a class="btn btn-default" href="<?php  echo $this->createWebUrl('ads_edit',array('ads_id'=>$ads['ads_id']));?>" role="button"><i class="fa fa-pencil fa-fw"></i></a>

<a onclick="delcfm()" class="btn btn-default" href="<?php  echo $this->createWebUrl('ads_del',array('ads_id'=>$ads['ads_id']));?>" role="button"><i class="fa fa-trash-o fa-fw"></i></a>

</td>

</tr>