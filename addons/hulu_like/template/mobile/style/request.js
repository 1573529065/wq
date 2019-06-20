
$(document).ready(function(){


  $("#request_age_big").blur(function(){
    var request_age_big = $(this).val();
	var request_age_small = $("#request_age_small").val();
	if(parseInt(request_age_big)<parseInt(request_age_small)){
		alert('最大年龄必须大于最小年龄');
		$(this).focus();
		return false;
	}

  });

  $("#request_height_big").blur(function(){
    var request_height_big = $(this).val();
	var request_height_small = $("#request_height_small").val();
	if(parseInt(request_height_big)<parseInt(request_height_small)){
		alert('最高身高必须高于最矮身高');
	  $(this).focus();
		return false;
	}

  });

    $("#request_weight_big").blur(function(){
    var request_weight_big = $(this).val();
	var request_weight_small = $("#request_weight_small").val();
	if(parseInt(request_weight_big)<parseInt(request_weight_small)){
		alert('最重体重必须重于最轻体重');
	$(this).focus();
		return false;
	}

  });
  	

});
