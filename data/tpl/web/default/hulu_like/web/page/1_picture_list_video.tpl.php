<?php defined('IN_IA') or exit('Access Denied');?>

<div id="hulu_pic_list" style="width:30%">

<div class="hulu_pic_list_img">

<?php  if($picture['picture_pid']=='1') { ?><div class="hulu_pic_list_tag_1">已屏蔽</div>
<?php  } else if($picture['picture_pid']=='2') { ?><div class="hulu_pic_list_tag_2">待审核</div>
<?php  } else if($picture['picture_pid']=='3') { ?><div class="hulu_pic_list_tag_3">已显示</div>
<?php  } else { ?><?php  } ?>

<video src="<?php  echo $_W['attachurl'];?><?php  echo $picture['picture_url'];?>" width="200" height="150" controls style="margin-left:-35%"></video>
</div>

<div class="hulu_pic_list_p">

<a class="btn btn-default" href="<?php  echo $this->createWebUrl('picture_update_video',array('openid'=>$_GPC['openid'],'picture_id'=>$picture['picture_id'],'picture_pid'=>'3'));?>" role="button">
<i class="fa fa-check fa-fw"></i>
</a>

<a class="btn btn-default" href="<?php  echo $this->createWebUrl('picture_update_video',array('openid'=>$_GPC['openid'],'picture_id'=>$picture['picture_id'],'picture_pid'=>'1'));?>" role="button">
<i class="fa fa-times fa-fw"></i>
</a>

<a class="btn btn-default" href="<?php  echo $this->createWebUrl('picture_del_video',array('openid'=>$_GPC['openid'],'picture_id'=>$picture['picture_id']));?>" role="button">
<i class="fa fa-trash-o fa-fw"></i>
</a>

</div>

</div>