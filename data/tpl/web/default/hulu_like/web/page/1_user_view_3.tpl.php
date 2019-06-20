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
<td class="lead">年龄范围</td>
<td><?php  echo $request['request_age_small'];?>-<?php  echo $request['request_age_big'];?>岁</td>
</tr>

<tr>
<td class="lead">身高范围</td>
<td><?php  echo $request['request_height_small'];?>-<?php  echo $request['request_height_big'];?>厘米</td>
</tr>

<tr>
<td class="lead">体重范围</td>
<td><?php  echo $request['request_weight_small'];?>-<?php  echo $request['request_weight_big'];?>千克</td>
</tr>

<tr>
<td class="lead">薪资范围</td>
<td><?php  echo salarydata()[$request['request_salary']-1]['salary_name'];?></td>
</tr>

<tr>
<td class="lead">学历要求</td>
<td><?php  echo educationdata()[$request['request_education']-1]['education_name'];?></td>
</tr>

<tr>
<td class="lead">地域范围</td>
<td><?php  echo areadata()[$request['request_area']-1]['area_name'];?></td>
</tr>



</tbody>

</table>
