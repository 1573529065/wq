<?php defined('IN_IA') or exit('Access Denied');?><table class="table table-hover">


<tbody>

<tr>
<td class="lead">出生日期</td>
<td><?php  echo date('Y-m-d H:i:s',$member['member_birthday']);?></td>
</tr>

<tr>
<td class="lead">身高</td>
<td><?php  echo $member['member_height'];?>CM</td>
</tr>


<tr>
<td class="lead">体重</td>
<td><?php  echo $member['member_weight'];?>KG</td>
</tr>

<tr>
<td class="lead">交友目的</td>
<td><?php  echo purposedata()[$member['member_purpose']-1]['purpose_name'];?></td>
</tr>

<tr>
<td class="lead">感情状态</td>
<td><?php  echo feelingdata()[$member['member_feeling']-1]['feeling_name'];?></td>
</tr>

<tr>
<td class="lead">婚姻状态</td>
<td><?php  echo marrydata()[$member['member_marry']-1]['marry_name'];?></td>
</tr>

<tr>
<td class="lead">微信</td>
<td><?php  echo $member['member_wechat'];?></td>
</tr>

<tr>
<td class="lead">手机</td>
<td><?php  echo $member['member_tel'];?></td>
</tr>

<tr>
<td class="lead">学历</td>
<td><?php  echo educationdata()[$member['member_edu']-1]['education_name'];?></td>
</tr>
<tr>
<td class="lead">月均收入</td>
<td><?php  echo salarydata()[$member['member_salary']-1]['salary_name'];?></td>
</tr>
<tr>
<td class="lead">房产情况</td>
<td><?php  echo housedata()[$member['member_house']-1]['house_name'];?></td>
</tr>
<tr>
<td class="lead">职业</td>
<td><?php  echo careerdata()[$member['member_career']-1]['career_name'];?></td>
</tr>
<tr>
<td class="lead">民族</td>
<td><?php  echo $member['member_nation'];?></td>
</tr>

<tr>
<td class="lead">城市</td>
<td><?php  echo $member['member_province'];?><?php  echo $member['member_city'];?><?php  echo $member['member_district'];?></td>
</tr>

<tr>
<td class="lead">交友宣言</td>
<td><?php  echo $member['member_content'];?></td>
</tr>


</tbody>

</table>
