<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
    <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/request.css">

<script type="text/javascript" src="<?php echo MODULE_URL;?>public/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo MODULE_URL;?>template/mobile/style/request.js"></script>

<!--顶部菜单导航开始-->
<?php  echo topmenu($this->createMobileUrl('my'),'择偶要求','touming.png');?>
<!--顶部菜单导航结束-->

<div id="input_two">

<form action="" method="POST">

<div id="input_two_style">
<div class="input_two_a">年龄范围<span>*</span></div>
<div class="input_two_b">
<div class="input_two_b_1"><input type="number" id="request_age_small" name="request_age_small" placeholder="请输入最小年龄" required="required" value="<?php  echo $request['request_age_small'];?>"/></div>
<div class="input_two_b_2"><input type="number" id="request_age_big" name="request_age_big" placeholder="请输入最大年龄" required="required" value="<?php  echo $request['request_age_big'];?>"/></div>
</div>
</div>

<div id="input_two_style">
<div class="input_two_a">身高范围<span>*</span></div>
<div class="input_two_b">
<div class="input_two_b_1"><input type="number" id="request_height_small" name="request_height_small" placeholder="请输入最矮身高" required="required" value="<?php  echo $request['request_height_small'];?>"/></div>
<div class="input_two_b_2"><input type="number" id="request_height_big" name="request_height_big" placeholder="请输入最高身高" required="required" value="<?php  echo $request['request_height_big'];?>"/></div>
</div>
</div>

<div id="input_two_style">
<div class="input_two_a">体重范围<span>*</span></div>
<div class="input_two_b">
<div class="input_two_b_1"><input type="number" id="request_weight_small" name="request_weight_small" placeholder="请输入最轻体重" required="required" value="<?php  echo $request['request_weight_small'];?>"/></div>
<div class="input_two_b_2"><input type="number" id="request_weight_big" name="request_weight_big" placeholder="请输入最重体重" required="required" value="<?php  echo $request['request_weight_big'];?>"/></div>
</div>
</div>



<div id="input_two_style">
<div class="input_two_a">薪资范围<span>*</span></div>
<div class="input_two_c">
<select name="request_salary">
<?php  if(is_array(salarydata())) { foreach(salarydata() as $key => $salary) { ?>
<option value="<?php  echo $salary['salary_id'];?>" <?php  if($salary['salary_id']==$request['request_salary']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $salary['salary_name'];?></option>
<?php  } } ?>
</select>
</div>
</div>



<div id="input_two_style">
<div class="input_two_a">学历要求<span>*</span></div>
<div class="input_two_c">
<select name="request_education">
<?php  if(is_array(educationdata())) { foreach(educationdata() as $key => $education) { ?>
<option value="<?php  echo $education['education_id'];?>" <?php  if($education['education_id']==$request['request_education']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $education['education_name'];?></option>
<?php  } } ?>
</select>
</div>
</div>

<div id="input_two_style">
<div class="input_two_a">所在地域<span>*</span></div>
<div class="input_two_c">
<select name="request_area">
<?php  if(is_array(areadata())) { foreach(areadata() as $key => $area) { ?>
<option value="<?php  echo $area['area_id'];?>" <?php  if($area['area_id']==$request['request_area']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $area['area_name'];?></option>
<?php  } } ?>
</select>
</div>
</div>



<div id="input_one_ok">
<div class="input_one_ok_a"><input type="submit" name="submit" value="修 改"/></div>
</div>

<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>