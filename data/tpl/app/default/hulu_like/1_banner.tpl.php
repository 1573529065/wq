<?php defined('IN_IA') or exit('Access Denied');?>  <link rel="stylesheet" type="text/css" href="<?php echo MODULE_URL;?>public/swiper.min.css">
<script type="text/Javascript" src="<?php echo MODULE_URL;?>public/jquery.min.js"></script>
<script type="text/Javascript" src="<?php echo MODULE_URL;?>public/swiper.jquery.min.js"></script>

<style type="text/css">
.swiper-container {width: 100%;height: 150px;}  
.swiper-container img{width: 100%;height: 100%;}  

</style>
<?php  if($ads) { ?>
<div class="swiper-container">
    <div class="swiper-wrapper">

	<?php  if(is_array($ads)) { foreach($ads as $key => $ads) { ?>
	
        <div class="swiper-slide"><a href="<?php  echo $ads['ads_link'];?>"><img src="<?php  echo $_W['attachurl'];?><?php  echo $ads['ads_pic'];?>"/></a></div>
		
		<?php  } } ?>

       
    </div>
    <!-- 如果需要分页器 -->
    <div class="swiper-pagination"></div>
    
	<!--
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>
    
    <div class="swiper-scrollbar"></div>
	-->
</div>

<script type="text/javascript">
$(document).ready(function () {
 
 var mySwiper = new Swiper ('.swiper-container', {
    //direction: 'vertical',
	autoplay : 3000,
    loop: true,
    
    pagination: '.swiper-pagination',
    
   // nextButton: '.swiper-button-next',
    //prevButton: '.swiper-button-prev',
    
    //scrollbar: '.swiper-scrollbar',
  })        

})
</script>
<?php  } ?>