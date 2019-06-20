<?php defined('IN_IA') or exit('Access Denied');?><table class="table table-hover">

<!--
<thead>
<tr>
<th>项目</th>
<th>内容</th>

</tr>
</thead>

-->

<tbody>

<tr>
<td class="lead">UID</td>
<td><?php  echo $user['uid'];?></td>
</tr>

<tr>
<td class="lead">OPENID</td>
<td><?php  echo $user['openid'];?></td>
</tr>

<tr>
<td class="lead">昵称</td>
<td><?php  echo $user['nickname'];?></td>
</tr>

<tr>
<td class="lead">头像</td>
<td><img style="width:60px;height:60px;border-radius:50%;" src="<?php  echo $user['avatar'];?>"/></td>
</tr>

<tr>
<td class="lead">会员等级</td>
<td>
<?php  if($user['upid']=='4') { ?><span class="label label-danger">VIP</span><br/><?php  echo date('Y-m-d H:i:s',$user['vip_endtime']);?>
<?php  } else if($user['upid']=='3') { ?><span class="label label-info">普通会员</span>
<?php  } else if($user['upid']=='2') { ?><span class="label label-warning">待审核</span>
<?php  } else if($user['upid']=='1') { ?><span class="label label-default">黑名单</span>
<?php  } else { ?><?php  } ?>
</td>
</tr>

<tr>
<td class="lead">性别</td>
<td>
<?php  if($user['sex']=='0') { ?><span class="label label-default">未知</span>
<?php  } else if($user['sex']=='1') { ?><span class="label label-primary">男</span>
<?php  } else if($user['sex']=='2') { ?><span class="label label-danger">女</span>
<?php  } else { ?><?php  } ?>
</td>
</tr>

<tr>
<td class="lead">身份证照片</td>
<td>
    <?php  if(is_array($picture_uid)) { foreach($picture_uid as $key => $picture) { ?>
    <a href="<?php  echo $_W['attachurl'];?><?php  echo $picture['picture_url'];?>" target="_blank"><img style="width:60px;height:60px;" src="<?php  echo $_W['attachurl'];?><?php  echo $picture['picture_url'];?>"/></a>
    <?php  } } ?>
</td>
</tr>

<tr>
<td class="lead">实名认证</td>
    <td>
        <span class="label label-default"><?php  echo $this->getUserIdState($user['realname']);?></span>
        <span class="label label-primary" onclick='userid_check(2)'>通过</span>
        <span class="label label-danger" onclick='userid_check(4)'>拒绝</span>
    </td>
</tr>

<tr>
<td class="lead">经纬度</td>
<td><?php  echo $user['address'];?></td>
</tr>

<tr>
<td class="lead">登录时间</td>
<td><?php  echo date('Y-m-d H:i:s',$user['login_time']);?></td>
</tr>

<tr>
<td class="lead">登录IP</td>
<td><?php  echo $user['login_ip'];?></td>
</tr>

<tr>
<td class="lead">登录平台</td>
<td><?php  echo $user['login_container'];?></td>
</tr>

<tr>
<td class="lead">登录设备</td>
<td><?php  echo $user['login_os'];?></td>
</tr>

<tr>
<td class="lead">注册时间</td>
<td><?php  echo date('Y-m-d H:i:s',$user['reg_time']);?></td>
</tr>

<tr>
<td class="lead">注册IP</td>
<td><?php  echo $user['reg_ip'];?></td>
</tr>

</tbody>

</table>
<script>
function userid_check(v) {
    $.post("<?php  echo $this->createWebUrl('user_view',array('uid'=>$user['uid'], 'openid'=>$user['openid']));?>",
            {
                chk_v: v
            },
            function (data, status) {
                window.location.reload();
            });
}
</script>
