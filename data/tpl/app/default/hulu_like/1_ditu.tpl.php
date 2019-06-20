<?php defined('IN_IA') or exit('Access Denied');?><!--地图开始/ditu.html/ditu.inc.php-->


<script>
wx.ready(function(){
$(document).ready(function(){

//获取经纬度开始
wx.getLocation({
    type: 'wgs84', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
    success: function (res) {
        var latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
        var longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
        var speed = res.speed; // 速度，以米/每秒计
        var accuracy = res.accuracy; // 位置精度
		ditu(latitude,longitude);
    }
});
//获取经纬度结束

//获取具体位置开始
function ditu(lat,lng){
  
    $.post("<?php  echo $this->createMobileUrl('ditu',array('type'=>'1'));?>",
    {
      lat:lat,
      lng:lng,
    },
    function(data,status){
		//alert(data);
		$(".hulu_map_right").html(data);
		$(".hulu_map_center").hide();
		$(".hulu_map_right").show();

		$("#talk_jingwei").val(lat+','+lng);
		$("#talk_address").val(data);
		//切换开始
		 $(".hulu_map_pic").click(function(){
			 $(this).toggleClass("hulu_map_pic_new");
			 var l=$("#talk_weizhi").val();
			 if(l==1){
	$(".hulu_map_right").hide();
  $(".hulu_map_center").show();
  $("#talk_weizhi").val("2");
			 }else if(l==2){
				  $(".hulu_map_center").hide();
				 $(".hulu_map_right").show(); 
  $("#talk_weizhi").val("1");

			 }
  });
		//切换结束
      
    });
 
  }
//获取具体位置结束

});
});
</script>

<!--地图结束-->