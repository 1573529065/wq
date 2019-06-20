<?php defined('IN_IA') or exit('Access Denied');?><script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=<?php  echo $make['make_key_baidu'];?>"></script>

	<div id="allmap"></div>

<script>
//$(document).ready(function(){
	wx.ready(function () {
	
wx.getLocation({
    type: 'wgs84', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
    success: function (res) {
        var latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
        var longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
        var speed = res.speed; // 速度，以米/每秒计
        var accuracy = res.accuracy; // 位置精度
		//
			var map = new BMap.Map("allmap");

var pointA = new BMap.Point(longitude,latitude);  // 我
//var divArr=document.getElementsByClassName('distance');

var divArr = $(".distance");

for(var i=0;i<divArr.length;i++){
	var str=divArr[i].innerText.split(',');
	//
	var lng=eval(str[1]);
	var lat=eval(str[2]);
	if(lng==null||lng==""||lat==null||lat==""){
		var lng=longitude-(Math.random()/20);
		var lat=latitude-(Math.random()/20);
		}
	//
	var pointB = new BMap.Point(lng,lat);  // 其他会员
	var distance = (map.getDistance(pointA,pointB)).toFixed(2);
distance=(distance/1000.00).toFixed(2);

 var id="distance_"+str[0];
document.getElementById(id).innerText=distance+"KM";

}
	

//

    }
});


});
</script>



