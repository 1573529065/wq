<?php defined('IN_IA') or exit('Access Denied');?><?php  if(!empty($present)) { ?>

<!---->
<div id="view_title"><div class="view_title_p">礼物<span>（<?php  echo $present_num;?>份）</span></div></div>
<!---->





<div id="view_present">
<div class="swiper-container">

    <div class="swiper-wrapper">

	<?php  if(is_array($present_page)) { foreach($present_page as $key => $present) { ?>
        <div class="swiper-slide">
		<?php  if(is_array($present)) { foreach($present as $key => $present) { ?>
		<div class="view_present_list"><div class="view_present_list_pic"><img src="<?php  echo $_W['attachurl'];?><?php  echo $present['gift_picture'];?>"/></div></div>
		<?php  } } ?>
		</div>
		<?php  } } ?>
      
    </div>

    <div class="swiper-pagination"></div>

</div>
</div>

<?php  } ?>

