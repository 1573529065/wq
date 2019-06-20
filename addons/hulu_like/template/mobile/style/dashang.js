$(document).ready(function(){
  $("#dashang_more").click(function(){
  $("#dashang_money").show();
  });

    $(".dashang_money_off").click(function(){
  $("#dashang_money").hide();
  });


});


function dashangchecksubmit(){

var h=$("input[name='money']").val();
if(h<=0){
	alert("打赏金额必须大于0元");
	$("input[name='money']").focus();
return false;
}
}


