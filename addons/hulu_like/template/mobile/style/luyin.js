
	wx.ready(function(){
		$(document).ready(function(){


		//开始录音开始
  $(".hulu_yuyin_center").click(function(){
		wx.startRecord();
		  $(".hulu_yuyin_center").hide();
		    $(".hulu_yuyin_right").show();
		});
		//开始录音结束
		

//停止录音开始
  $(".hulu_yuyin_right").click(function(){
wx.stopRecord({
    success: function (res) {
        var localId = res.localId;
		 $(".hulu_yuyin_right").hide();
		  $(".hulu_yuyin_center").show();
		  translateVoice(localId);
	
    }
});
  });
//停止录音结束

//监听录音停止开始

wx.onVoiceRecordEnd({
    // 录音时间超过一分钟没有停止的时候会执行 complete 回调
    complete: function (res) {
        var localId = res.localId; 
		 $(".hulu_yuyin_right").hide();
		  $(".hulu_yuyin_center").show();
		  translateVoice(localId);
    }
});
//监听录音停止结束


//识别语音开始
function translateVoice(e){
wx.translateVoice({
   localId:e, // 需要识别的音频的本地Id，由录音相关接口获得
    isShowProgressTips:1, // 默认为1，显示进度提示
    success: function (res) {
        var s=(res.translateResult); // 语音识别的结果
		//alert(s);
		$("textarea[name='talk_content']").append(s);
    }
});

}
//识别语音结束


});
});
	