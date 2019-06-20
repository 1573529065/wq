<?php defined('IN_IA') or exit('Access Denied');?><tr>

<td><?php  echo $tixian['money_id'];?></td>



<td>
<?php  if($tixian['money_pid']==3) { ?><span class="label label-success">已处理</span>
<?php  } else if($tixian['money_pid']==2) { ?><span class="label label-danger">待处理</span>
<?php  } else if($tixian['money_pid']==1) { ?><span class="label label-default">已拒绝</span><br/><br/>拒绝说明：<?php  echo $tixian['money_content'];?>
<?php  } else { ?><?php  } ?>
</td>



<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo getavatar($_W['uniacid'],$tixian['openid']);?>"/></td>

<td><?php  echo getnickname($_W['uniacid'],$tixian['openid']);?></td>

<td><span class="label label-success">￥：<?php  echo round($tixian['money_money'],4);?></span><br/><br/>

<td>
<?php  echo date('Y-m-d H:i:s',$tixian['money_time']);?><br/>
<?php  echo $tixian['money_ip'];?><br/>
<?php  echo $tixian['money_container'];?><br/>
<?php  echo $tixian['money_os'];?>
</td>




<td>

<!--模态框开始-->

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal_<?php  echo $tixian['tixian_id'];?>">
提现资料
</button>

<!-- Modal -->
<div class="modal fade" id="myModal_<?php  echo $tixian['tixian_id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?php  echo getnickname($_W['uniacid'],$tixian['openid']);?>的提现资料</h4>
      </div>
      <div class="modal-body">
        <?php  echo gettixian($_W['uniacid'],$tixian['openid']);?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		<!--
        <button type="button" class="btn btn-primary">Save changes</button>
		-->
      </div>
    </div>
  </div>
</div>


<!--模态框结束-->
</td>

<td>

<a class="btn btn-success" href="<?php  echo $this->createwebUrl('tixian_update',array('money_id'=>$tixian['money_id'],'money_pid'=>'3'));?>" role="button"><span class="glyphicon glyphicon-ok"></span>已转账</a>

<br/><br/>
<form class="form-horizontal" role="form" action="<?php  echo $this->createWebUrl('tixian_update',array('money_id'=>$tixian['money_id'],'money_pid'=>'1'));?>" method="POST">

<!--表单开始-->
  <div class="form-group">
    <div class="col-sm-12">
      <input type="text" class="form-control" id="" name="money_content" placeholder="请输入拒绝提现理由">

    </div>
  </div>
<!--表单结束-->






<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
		  <input class="btn btn-danger" type="submit" name="submit" value="拒绝提现">

    </div>
  </div>
<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>



</td>
</tr>


