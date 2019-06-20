<?php defined('IN_IA') or exit('Access Denied');?><script>

wx.ready(function(){
$(document).ready(function(){
  $(".news_send_picture").click(function(){

//选择图片开始

wx.chooseImage({
    count: 1, // 默认9
    sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有
    sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有
    success: function (res) {
        var localIds = res.localIds; // 返回选定照片的本地ID列表，localId可以作为img标签的src属性显示图片
uploadImage(localIds);
    }
});

//选择图片结束

//上传照片开始
function uploadImage(e){
	for(var i=0;i<e.length;i++){
wx.uploadImage({
    localId:e[0], // 需要上传的图片的本地ID，由chooseImage接口获得
    isShowProgressTips: 1, // 默认为1，显示进度提示
    success: function (res) {
        var serverId = res.serverId; // 返回图片的服务器端ID
		//alert(serverId);
		downloadImage(serverId);
    }
});
	}
}
//上传照片结束

//下载照片开始
function downloadImage(l){
 $.post("<?php  echo $this->createMobileUrl('download',array('type'=>'add'));?>",
    {
		picture_type:"news",
      media_id:l,
      
    },
    function(data,status){
      //alert("数据：" + data + "\n状态：" + status);

	  $(".news_send_picture_pic").css("background-image","url('<?php  echo $_W['attachurl'];?>"+data+"')");
	  $("#news_send_left_content").val(data);
	  $("#news_type").val("4");
	  $('#news_send_left_content').attr("readonly","readonly")
    });
}
//下载照片结束


});
});
});
</script>