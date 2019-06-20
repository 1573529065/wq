<?php defined('IN_IA') or exit('Access Denied');?><?php  echo register_jssdk(false);?>
<script type="text/javascript" src="<?php echo MODULE_URL;?>public/jquery.min.js"></script>


		<script>
	wx.ready(function () {

wx.getLocation({
    type: 'wgs84', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
    success: function (res) {
        var latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
        var longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
        var speed = res.speed; // 速度，以米/每秒计
        var accuracy = res.accuracy; // 位置精度
	
		//
		//alert(latitude);
		  $.post("<?php  echo $this->createMobileUrl('update_address');?>",
    {
		   address_lon:longitude,
      address_lat:latitude,
     
    },
    function(data,status){
      //alert("数据：" + data + "\n状态：" + status);
    });
		//
	}  
});
	});

	</script>