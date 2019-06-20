
$(document).ready(function(){
  $(".money_banner_style").click(function(){
	  	  $(this).siblings().removeClass("money_banner_new");
	  $(this).addClass("money_banner_new");
  var h=$(this).index();
 
 $("#money_body").children().not(h).hide();
  $("#money_body").children().eq(h).show();
  });
});
