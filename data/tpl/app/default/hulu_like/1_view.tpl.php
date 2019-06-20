<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('header', TEMPLATE_INCLUDEPATH)) : (include template('header', TEMPLATE_INCLUDEPATH));?>
  <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>template/mobile/style/view.css">
<script type="text/javascript" src="<?php echo MODULE_URL;?>template/mobile/style/view.js"></script>

  <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>public/swiper.min.css">
<script type="text/Javascript" src="<?php echo MODULE_URL;?>public/swiper.jquery.min.js"></script>

<!---->
<script>

function lookpicture(e){
	wx.ready(function(){

wx.previewImage({
    current:e, 
    urls: [
	<?php  if(is_array($picture)) { foreach($picture as $key => $picture) { ?>
	"<?php  echo $_W['attachurl'];?><?php  echo $picture['picture_url'];?>",
	<?php  } } ?>
	] 
});

	});

}


$(document).ready(function(){

<?php  if(!empty($like)) { ?>
$(".view_top_c_2").html("已喜欢");
<?php  } ?>
	//喜欢开始
	$(".view_top_c_2").click(function(){
    $.post("<?php  echo $this->createMobileUrl('anlian');?>",
    {
      like_openid:"<?php  echo $user['openid'];?>",
     
    },
    function(data,status){
		$(".view_top_c_2").html("已喜欢");
     
    });
  });
	//喜欢结束

	//查看联系方式开始
  $(".view_contact_c").click(function(){
    $.post("<?php  echo $this->createMobileUrl('get_contact');?>",
    {
      user_uid:"<?php  echo $user['uid'];?>",
    },
    function(data,status){
        if (data == 'need_vip') {
            if (confirm('查看该会员的联系方式需要先开通VIP,去开通？')) {
                location.href='<?php echo $_W['siteroot'] . "app/index.php?i=" . $_W['uniacid'] . "&c=entry&m=hulu_like&do=vip";?>';
            }
        } else {
            alert(data);
        }
        
    });
  });
  //查看联系方式结束

});
</script>


<!---->

<!--顶部开始-->
  <div id="view_top">

  <div id="view_top_a">
  <div class="view_top_a_avatar">
  <div class="view_top_a_avatar_pic">
  <?php  if(empty($user['user_img'])) { ?>
<img src="<?php  echo $user['avatar'];?>"/>
<?php  } else { ?>
<img src="<?php  echo $_W['attachurl'].$user['user_img'];?>"/>
<?php  } ?>
  </div>
  </div>
  </div>

  <div id="view_top_b">
    <div class="view_top_b_1"><?php  echo $user['nickname'];?></div>
  </div>

<div id="view_top_c">
<a href="<?php  echo $this->createMobileUrl('liaotian',array('openid'=>$user['openid']));?>">
<div class="view_top_c_1">聊一聊</div>
</a>

<div class="view_top_c_2">喜欢</div>

</div>

  </div>
<!--顶部结束-->

<!---->
<div id="view_one">
<div class="view_one_a view_one_new">基本资料</div>
<div class="view_one_b">择偶要求</div>
</div>

<!---->

<div id="view_body1">

<!--送礼开始-->
<div id="view_gift">

<a href="<?php  echo $this->createMobileUrl('gift',array('receive'=>$user['openid']));?>">
<div class="view_gift_style">
<div class="view_gift_style_style">
<div class="view_gift_style_pic" style="background-image:url('<?php echo MODULE_URL;?>public/images/view_gift.png');"></div>
<div class="view_gift_style_p">送礼</div>
</div>
</div>
</a>

<a href="<?php  echo $this->createMobileUrl('dashang',array('type'=>'1','receive'=>$user['openid']));?>">
<div class="view_gift_style">
<div class="view_gift_style_style">
<div class="view_gift_style_pic" style="background-image:url('<?php echo MODULE_URL;?>public/images/view_dashang.png');"></div>
<div class="view_gift_style_p">打赏</div>
</div>
</div>
</a>

<a href="<?php  echo $this->createMobileUrl('liaotian',array('openid'=>$user['openid']));?>">
<div class="view_gift_style">
<div class="view_gift_style_style">
<div class="view_gift_style_pic" style="background-image:url('<?php echo MODULE_URL;?>public/images/view_chat.png');"></div>
<div class="view_gift_style_p">聊聊</div>
</div>
</div>
</a>


<div class="view_gift_xian1"></div>
<div class="view_gift_xian2"></div>


</div>
<!--送礼结束-->

<!---->
<div id="view_title"><div class="view_title_p">相册<span>（<?php  echo $picture_num;?>张）</span></div></div>
<!---->

<!--相册开始-->


<?php  if((!empty($picture))) { ?>
<div id="view_picture">
<div class="swiper-container">
    <div class="swiper-wrapper">
	<?php  if(is_array($picture_page)) { foreach($picture_page as $key => $picture) { ?>
        <div class="swiper-slide">
		<?php  if(is_array($picture)) { foreach($picture as $key => $picture) { ?>
		<div class="view_picture_list"><div class="view_picture_list_pic" onclick="lookpicture('<?php  echo $_W['attachurl'];?><?php  echo $picture['picture_url'];?>');"><img src="<?php  echo $_W['attachurl'];?><?php  echo $picture['picture_url'];?>"/></div></div>
		<?php  } } ?>
		</div>
		<?php  } } ?>
      
    </div>
    <div class="swiper-pagination"></div>
    <!--
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>
    
    <div class="swiper-scrollbar"></div>
	-->
</div>
</div>
<?php  } else { ?><div id="view_picture_empty">这个家伙很懒，照片都没有留下！</div><?php  } ?>

<!--相册结束-->
<div id="view_title"><div class="view_title_p">视频<span>（<?php  echo $picture_num_video;?>个）</span></div></div>
<?php  if((!empty($picture_video))) { ?>
<div id="view_picture">
<div class="swiper-container">
    <div class="swiper-wrapper">
	<?php  if(is_array($picture_page_video)) { foreach($picture_page_video as $key => $picture_video) { ?>
        <div class="swiper-slide">
		<?php  if(is_array($picture_video)) { foreach($picture_video as $key => $picture_video) { ?>
		<div class="view_picture_list">
		<div class="view_picture_list_pic" onclick="lookpicture('<?php  echo $_W['attachurl'];?><?php  echo $picture_video['picture_url'];?>');">
		<video src="<?php  echo $_W['attachurl'];?><?php  echo $picture_video['picture_url'];?>" width="150" height="100" controls ></video>
		</div>
		</div>
		<?php  } } ?>
		</div>
		<?php  } } ?>
      
    </div>
    <div class="swiper-pagination"></div>
    <!--
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>
    
    <div class="swiper-scrollbar"></div>
	-->
</div>
</div>
<?php  } else { ?><div id="view_picture_empty">这个家伙很懒，视频都没有留下！</div><?php  } ?>

<!--视频结束-->
<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('view_liwu', TEMPLATE_INCLUDEPATH)) : (include template('view_liwu', TEMPLATE_INCLUDEPATH));?>

<!---->
<div id="view_title"><div class="view_title_p">交友宣言</div></div>
<!---->
<div id="view_xuanyan">
<div class="view_xuanyan_p">
<?php  if($member['member_content']) { ?><?php  echo $member['member_content'];?><?php  } else { ?>这个家伙很懒，什么都没有留下！<?php  } ?>
</div></div>

<!--联系方式开始-->

<div id="view_contact">
<div class="view_contact_a"><div class="view_contact_a_pic"><img src="<?php echo MODULE_URL;?>public/images/e1.png"/></div></div>
<div class="view_contact_b">联系方式</div>
<div class="view_contact_c">付费查看 ></div>

</div>

<!--联系方式结束-->

<!---->
<div id="view_title"><div class="view_title_p">基本资料</div></div>
<!---->

<div id="view_two">

<div class="view_two_style">
<div class="view_two_a">性别</div><div class="view_two_b"><?php  if($user['sex']=='1') { ?>汉子<?php  } else if($user['sex']=='2') { ?>女<?php  } else if($user['sex']=='0') { ?>未知<?php  } else { ?><?php  } ?></div>
</div>

<div class="view_two_style">
<div class="view_two_a">出生日期</div><div class="view_two_b"><?php  echo date('Y-m-d',$member['member_birthday']);?></div>
</div>

<div class="view_two_style">
<div class="view_two_a">城市</div><div class="view_two_b"><?php  echo $member['member_province'];?><?php  echo $member['member_city'];?><?php  echo $member['member_district'];?></div>
</div>

<div class="view_two_style">
<div class="view_two_a">身高</div><div class="view_two_b"><?php  echo $member['member_height'];?>CM</div>
</div>


<div class="view_two_style">
<div class="view_two_a">体重</div><div class="view_two_b"><?php  echo $member['member_weight'];?>KG</div>
</div>

<div class="view_two_style">
<div class="view_two_a">学历</div><div class="view_two_b"><?php  echo $educationdata[$member['member_edu']-1]['education_name'];?></div>
</div>
<div class="view_two_style">
<div class="view_two_a">月均收入</div><div class="view_two_b"><?php  echo $salarydata[$member['member_salary']-1]['salary_name'];?></div>
</div>
<div class="view_two_style">
<div class="view_two_a">房产情况</div><div class="view_two_b"><?php  echo $housedata[$member['member_house']-1]['house_name'];?></div>
</div>  
<div class="view_two_style">
<div class="view_two_a">职业</div><div class="view_two_b"><?php  echo $careerdata[$member['member_career']-1]['career_name'];?></div>
</div> 
<div class="view_two_style">
<div class="view_two_a">民族</div><div class="view_two_b"><?php echo $member['member_nation'] ? $member['member_nation'] : '汉族'?></div>
</div>    
  
<div class="view_two_style">
<div class="view_two_a">交友目的</div><div class="view_two_b"><?php  echo $purposedata[$member['member_purpose']-1]['purpose_name'];?></div>
</div>

<div class="view_two_style">
<div class="view_two_a">感情状态</div><div class="view_two_b"><?php  echo $feelingdata[$member['member_feeling']-1]['feeling_name'];?></div>
</div>


<div class="view_two_style">
<div class="view_two_a">婚姻状态</div><div class="view_two_b"><?php  echo $marrydata[$member['member_marry']-1]['marry_name'];?></div>
</div>

</div>

</div>

<!--择偶要求开始-->
<div id="view_body2">

<!---->
<div id="view_title"><div class="view_title_p">择偶要求</div></div>
<!---->

<div id="view_two">

<div class="view_two_style">
<div class="view_two_a">年龄要求</div><div class="view_two_b"><?php  echo $request['request_age_small'];?>-<?php  echo $request['request_age_big'];?>岁</div>
</div>

<div class="view_two_style">
<div class="view_two_a">身高要求</div><div class="view_two_b"><?php  echo $request['request_height_small'];?>-<?php  echo $request['request_height_big'];?>CM</div>
</div>

<div class="view_two_style">
<div class="view_two_a">体重要求</div><div class="view_two_b"><?php  echo $request['request_weight_small'];?>-<?php  echo $request['request_weight_big'];?>KG</div>
</div>

<div class="view_two_style">
<div class="view_two_a">薪资要求</div><div class="view_two_b"><?php  echo $salarydata[$request['request_salary']-1]['salary_name'];?></div>
</div>

<div class="view_two_style">
<div class="view_two_a">学历要求</div><div class="view_two_b"><?php  echo $educationdata[$request['request_education']-1]['education_name'];?></div>
</div>



<div class="view_two_style">
<div class="view_two_a">地域要求</div><div class="view_two_b"><?php  echo $areadata[$request['request_area']-1]['area_name'];?></div>
</div>

</div>
</div>
<!--择偶要求结束-->

<?php (!empty($this) && $this instanceof WeModuleSite) ? (include $this->template('footer', TEMPLATE_INCLUDEPATH)) : (include template('footer', TEMPLATE_INCLUDEPATH));?>