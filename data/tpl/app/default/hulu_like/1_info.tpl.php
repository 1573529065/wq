<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/resource/js/app/util.js"></script>
<script src="<?php  echo $_W['siteroot'];?>app/resource/js/require.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/resource/js/lib/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>app/resource/js/lib/mui.min.js"></script>

<link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/request.css">
<script type="text/javascript" src="<?php echo MODULE_URL;?>template/mobile/style/request.js"></script>

<!--顶部菜单导航开始-->

<?php  echo topmenu($this->createMobileUrl('my'),'基本资料','touming.png');?>

<!--顶部菜单导航结束-->

<div id="input_one">

<form action="" method="POST">
<div id="input_one_style">
<div class="input_one_a">头像<span>*</span></div>
<div class="input_one_b">

 <div class="picture_upload_add">
 <?php  if(empty($user['user_img'])) { ?>
 <img src="<?php  echo getavatar($_W['uniacid'], $user['openid']);?>" width="40px" height="40px" style="margin-left:90%;margin-top:5px"/>
<?php  } else { ?>
<img src="<?php  echo $_W['attachurl'].$user['user_img'];?>" width="40px" height="40px" style="margin-left:90%;margin-top:5px"/>
<?php  } ?>
</div>
</div>
</div>
<div id="input_one_style">
<div class="input_one_a">昵称<span>*</span></div>
<div class="input_one_b"><input type="text" name="nickname" placeholder="请输入会员昵称" required="required" value="<?php  echo $user['nickname'];?>"/></div>
</div>


<div id="input_one_style">
<div class="input_one_a">性别<span>*</span></div>
<div class="input_one_b">
<select name="sex">
<option value="1" <?php  if($user['sex']=='1') { ?>selected="selected"<?php  } else { ?><?php  } ?>>男</option>
<option value="2" <?php  if($user['sex']=='2') { ?>selected="selected"<?php  } else { ?><?php  } ?>>女</option>
</select>
</div>
</div>


<div id="input_one_style">
<div class="input_one_a">出生日期<span>*</span></div>
<div class="input_one_b"><?php  echo tpl_app_form_field_calendar('birth',array('year'=>date('Y',$member['member_birthday']),'month'=>date('m',$member['member_birthday']),'day'=>date('d',$member['member_birthday'])));?></div>
</div>

<div id="input_one_style">
<div class="input_one_a">身高<span>*</span></div>
<div class="input_one_b">
<input id="member_height" type="text" name="member_height" readonly="" value="<?php  echo $member['member_height'];?>" placeholder="请选择身高（CM）" required="required"/>
</div>
</div>

<div id="input_one_style">
<div class="input_one_a">体重<span>*</span></div>
<div class="input_one_b">
<input id="member_weight" type="text" name="member_weight" readonly="" value="<?php  echo $member['member_weight'];?>" placeholder="请选择体重（KG）" required="required"/>
</div>
</div>

<div id="input_one_style">
<div class="input_one_a">交友目的</div>
<div class="input_one_b">
<select name="member_purpose">
<?php  if(is_array(purposedata())) { foreach(purposedata() as $key => $purpose) { ?>
<option value="<?php  echo $purpose['purpose_id'];?>" <?php  if($purpose['purpose_id']==$member['member_purpose']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $purpose['purpose_name'];?></option>
<?php  } } ?>
</select>
</div>
</div>

<div id="input_one_style">
<div class="input_one_a">感情状态</div>
<div class="input_one_b">
<select name="member_feeling">
<?php  if(is_array(feelingdata())) { foreach(feelingdata() as $key => $feeling) { ?>
<option value="<?php  echo $feeling['feeling_id'];?>" <?php  if($feeling['feeling_id']==$member['member_feeling']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $feeling['feeling_name'];?></option>
<?php  } } ?>
</select>
</div>
</div>

<div id="input_one_style">
<div class="input_one_a">婚姻状态</div>
<div class="input_one_b">
<select name="member_marry">
<?php  if(is_array(marrydata())) { foreach(marrydata() as $key => $marry) { ?>
<option value="<?php  echo $marry['marry_id'];?>" <?php  if($marry['marry_id']==$member['member_marry']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $marry['marry_name'];?></option>
<?php  } } ?>
</select>
</div>
</div>

<div id="input_one_style">
<div class="input_one_a">微信号</div>
<div class="input_one_b"><input type="text" name="member_wechat" placeholder="请输入微信号"  value="<?php echo $member['member_wechat']?$member['member_wechat']:'1' ?>"/></div>
</div>

<div id="input_one_style">
<div class="input_one_a">手机号</div>
<div class="input_one_b"><input type="number" name="member_tel" placeholder="请输入手机号"  value="<?php echo $member['member_tel']?$member['member_tel']:'1' ?>"/></div>
</div>

<div id="input_one_style">
    <div class="input_one_a">学历</div>
    <div class="input_one_b">
    <select name="member_edu">
    <?php  if(is_array(educationdata())) { foreach(educationdata() as $key => $edu) { ?><?php  if ($edu['education_id']==1) {continue;}?>
    <option value="<?php  echo $edu['education_id'];?>" <?php  if($edu['education_id']==$member['member_edu']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $edu['education_name'];?></option>
    <?php  } } ?>
    </select>
    </div>
</div>  
<div id="input_one_style">
    <div class="input_one_a">月均收入</div>
    <div class="input_one_b">
    <select name="member_salary">
    <?php  if(is_array(salarydata())) { foreach(salarydata() as $key => $salary) { ?><?php  if ($salary['salary_id']==1) {continue;}?>
    <option value="<?php  echo $salary['salary_id'];?>" <?php  if($salary['salary_id']==$member['member_salary']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $salary['salary_name'];?></option>
    <?php  } } ?>
    </select>
    </div>
</div> 
<div id="input_one_style">
    <div class="input_one_a">房产情况</div>
    <div class="input_one_b">
    <select name="member_house">
    <?php  if(is_array(housedata())) { foreach(housedata() as $key => $house) { ?>
    <option value="<?php  echo $house['house_id'];?>" <?php  if($house['house_id']==$member['member_house']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $house['house_name'];?></option>
    <?php  } } ?>
    </select>
    </div>
</div>     
<div id="input_one_style">
    <div class="input_one_a">职业</div>
    <div class="input_one_b">
    <select name="member_career">
    <?php  if(is_array(careerdata())) { foreach(careerdata() as $key => $house) { ?>
    <option value="<?php  echo $house['career_id'];?>" <?php  if($house['career_id']==$member['member_career']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $house['career_name'];?></option>
    <?php  } } ?>
    </select>
    </div>
</div>    
<div id="input_one_style">
    <div class="input_one_a">民族</div>
    <div class="input_one_b"><input type="text" name="member_nation" placeholder="请输入民族" value="<?php echo $member['member_nation'] ? $member['member_nation'] : '汉族';?>"/></div>
</div>
      
       
<div id="input_one_style">
<div class="input_one_a">所在城市<span>*</span></div>
<div class="input_one_b"><?php  echo tpl_app_form_field_district('member_address',array('province'=>$member['member_province'],'city'=>$member['member_city'],'district'=>$member['member_district']));?></div>
</div>
    
<div id="input_one_textarea_style">
<div class="input_one_textarea_a">交友宣言</div>
<div class="input_one_textarea_b"><textarea type="text" name="member_content" placeholder="请输入交友宣言" required="required"><?php  echo $member['member_content'];?></textarea></div>
</div>
<div id="input_one_style">
    <div class="input_one_a">关闭我的信息<span></span></div>
    <div class="input_one_b">
    <select name="set_close">
    <option value="1" <?php  if($user['set_close']=='1') { ?>selected="selected"<?php  } else { ?><?php  } ?>>是</option>
    <option value="0" <?php  if($user['set_close']=='0') { ?>selected="selected"<?php  } else { ?><?php  } ?>>否</option>
    </select>
    </div>
</div>

<div id="top_menu" style="background-color: #f3adaa;">
    <a href="javascript:;">
    <div class="top_menu_a"><div class="top_menu_a_pic"></div></div>
    </a>
    <div class="top_menu_b">择偶要求</div>
    <div class="top_menu_c"></div>
</div>    
<div id="div_request">
    <div id="input_two_style">
    <div class="input_two_a">年龄范围</div>
    <div class="input_two_b">
    <div class="input_two_b_1"><input type="number" id="request_age_small" name="request_age_small" placeholder="请输入最小年龄" required="required" value="<?php  echo $request['request_age_small'];?>"/></div>
    <div class="input_two_b_2"><input type="number" id="request_age_big" name="request_age_big" placeholder="请输入最大年龄" required="required" value="<?php  echo $request['request_age_big'];?>"/></div>
    </div>
    </div>

    <div id="input_two_style">
    <div class="input_two_a">身高范围</div>
    <div class="input_two_b">
    <div class="input_two_b_1"><input type="number" id="request_height_small" name="request_height_small" placeholder="请输入最矮身高" required="required" value="<?php  echo $request['request_height_small'];?>"/></div>
    <div class="input_two_b_2"><input type="number" id="request_height_big" name="request_height_big" placeholder="请输入最高身高" required="required" value="<?php  echo $request['request_height_big'];?>"/></div>
    </div>
    </div>

    <div id="input_two_style">
    <div class="input_two_a">体重范围</div>
    <div class="input_two_b">
    <div class="input_two_b_1"><input type="number" id="request_weight_small" name="request_weight_small" placeholder="请输入最轻体重" required="required" value="<?php  echo $request['request_weight_small'];?>"/></div>
    <div class="input_two_b_2"><input type="number" id="request_weight_big" name="request_weight_big" placeholder="请输入最重体重" required="required" value="<?php  echo $request['request_weight_big'];?>"/></div>
    </div>
    </div>

    <div id="input_two_style">
        <div class="input_two_a">薪资范围</div>
        <div class="input_two_c">
        <select name="request_salary">
        <?php  if(is_array(salarydata())) { foreach(salarydata() as $key => $salary) { ?>
        <option value="<?php  echo $salary['salary_id'];?>" <?php  if($salary['salary_id']==$request['request_salary']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $salary['salary_name'];?></option>
        <?php  } } ?>
        </select>
        </div>
    </div>

    <div id="input_two_style">
        <div class="input_two_a">学历要求</div>
        <div class="input_two_c">
        <select name="request_education">
        <?php  if(is_array(educationdata())) { foreach(educationdata() as $key => $education) { ?>
        <option value="<?php  echo $education['education_id'];?>" <?php  if($education['education_id']==$request['request_education']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $education['education_name'];?></option>
        <?php  } } ?>
        </select>
        </div>
    </div>

    <div id="input_two_style">
        <div class="input_two_a">所在地域</div>
        <div class="input_two_c">
        <select name="request_area">
        <?php  if(is_array(areadata())) { foreach(areadata() as $key => $area) { ?>
        <option value="<?php  echo $area['area_id'];?>" <?php  if($area['area_id']==$request['request_area']) { ?>selected="selected"<?php  } else { ?><?php  } ?>><?php  echo $area['area_name'];?></option>
        <?php  } } ?>
        </select>
        </div>
    </div>
</div>
         
    
<div id="input_one_ok">
<div class="input_one_ok_a"><input type="submit" name="submit" value="确 定"/></div>
</div>

<input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
</form>
</div>

<!---->
<script type="text/javascript">
    $("#member_height").on("tap", function(){
        var options = {data: 
            <?php  echo json_encode(heightdata());?>
       };
        var $this = $(this);
        util.poppicker(options, function(items){
            $this.val(items[0]);
        });
    });
</script>
<!---->

<!---->
<script type="text/javascript">
    $("#member_weight").on("tap", function(){
        var options = {data: 
            <?php  echo json_encode(weightdata());?>
       };
        var $this = $(this);
        util.poppicker(options, function(items){
            $this.val(items[0]);
        });
    });
</script>
<!---->
<script type="text/javascript">
 wx.ready(function () {
        $(document).ready(function () {
            $(".picture_upload_add").click(function () {
                chooseImage();
            });

//选择照片开始
            function chooseImage() {
                wx.chooseImage({
                    count: 1, // 默认9
                    sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有
                    sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有
                    success: function (res) {
                        var localIds = res.localIds; // 返回选定照片的本地ID列表，localId可以作为img标签的src属性显示图片
                        uploadImage(localIds);
                    }
                });
            }
//选择照片结束
//上传照片开始
            function uploadImage(arr) {
                for (var i = 0; i < arr.length; i++) {
                    wx.uploadImage({
                        localId: arr[i], // 需要上传的图片的本地ID，由chooseImage接口获得
                        isShowProgressTips: 1, // 默认为1，显示进度提示
                        success: function (res) {
                            var serverId = res.serverId; // 返回图片的服务器端ID
                            downloadImage(serverId);
                        }
                    });
                }
            }
//上传照片结束
//下载图片开始
            function downloadImage(e) {
                $.post("<?php  echo $this->createMobileUrl('download_img',array('type'=>'add'));?>",
                        {
                            picture_type: "<?php echo $picture_type ? $picture_type : 'show';?>",
                            media_id: e,
                        },
                        function (data, status) {
						window.location.reload();
                        });
            }
//下载图片结束

        });
    });
</script>
<script type="text/javascript">
    $("#user_sex_a").on("tap", function(){
        var options = {data: [
            {"text":"汉子","value":"1"},
            {"text":"妹子","value":"2"}
       ]};
        var $this = $(this);
        util.poppicker(options, function(items){
			$("#user_sex_b").val(items[0].value);
			 $this.html(items[0].text);

        });
    });
</script>

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('foot', TEMPLATE_INCLUDEPATH)) : (include template('foot', TEMPLATE_INCLUDEPATH));?>