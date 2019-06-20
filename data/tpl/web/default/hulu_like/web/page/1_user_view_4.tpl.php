<?php defined('IN_IA') or exit('Access Denied');?><table class="table table-hover">



<tbody>

<tr>
<td class="lead">手机认证</td>
<td>
<?php  if($more['more_real_tel_pid']=='1') { ?><span class="label label-default">未认证</span>
<?php  } else if($more['more_real_tel_pid']=='2') { ?><span class="label label-success">已认证</span>
<?php  } else { ?><?php  } ?>
</td>
</tr>

<tr>
<td class="lead">手机号</td>
<td><?php  echo $more['more_real_tel'];?></td>
</tr>

<tr>
<td class="lead">验证码</td>
<td><?php  echo $more['more_real_code'];?></td>
</tr>



</tbody>

</table>
