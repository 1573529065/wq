$(document).ready(function(){


    $("#vip_one_c_pic_a").addClass("vip_one_c_pic_bg");
	$("#vip_days").val("365");
     $(".vip_one_a:eq(0)").addClass("vip_one_a_after");
	      $(".vip_one_b_1 span:eq(0),.vip_one_b_2 span:eq(0)").addClass("vip_one_b_new");



  $(".vip_one_style_a").click(function(){
    $("#vip_one_c_pic_a").addClass("vip_one_c_pic_bg");
	 $("#vip_one_c_pic_b").removeClass("vip_one_c_pic_bg");
$("#vip_one_c_pic_c").removeClass("vip_one_c_pic_bg");
   $(".vip_one_a:eq(0)").addClass("vip_one_a_after");
	 $(".vip_one_b_1 span:eq(0),.vip_one_b_2 span:eq(0)").addClass("vip_one_b_new");
	 $(".vip_one_a:eq(1),.vip_one_a:eq(2)").removeClass("vip_one_a_after");
	 $(".vip_one_b_1 span:eq(1),.vip_one_b_2 span:eq(1)").removeClass("vip_one_b_new");
	 	 $(".vip_one_b_1 span:eq(2),.vip_one_b_2 span:eq(2)").removeClass("vip_one_b_new");

	$("#vip_days").val("365")	
  });



  $(".vip_one_style_b").click(function(){
    $("#vip_one_c_pic_b").addClass("vip_one_c_pic_bg");
	 $("#vip_one_c_pic_a").removeClass("vip_one_c_pic_bg");
$("#vip_one_c_pic_c").removeClass("vip_one_c_pic_bg");

   $(".vip_one_a:eq(1)").addClass("vip_one_a_after");
	 $(".vip_one_b_1 span:eq(1),.vip_one_b_2 span:eq(1)").addClass("vip_one_b_new");
	 $(".vip_one_a:eq(0),.vip_one_a:eq(2)").removeClass("vip_one_a_after");
	 $(".vip_one_b_1 span:eq(0),.vip_one_b_2 span:eq(0)").removeClass("vip_one_b_new");
	 $(".vip_one_b_1 span:eq(2),.vip_one_b_2 span:eq(2)").removeClass("vip_one_b_new");

	$("#vip_days").val("92")	
  });


  $(".vip_one_style_c").click(function(){
    $("#vip_one_c_pic_c").addClass("vip_one_c_pic_bg");
	 $("#vip_one_c_pic_a").removeClass("vip_one_c_pic_bg");
$("#vip_one_c_pic_b").removeClass("vip_one_c_pic_bg");

   $(".vip_one_a:eq(2)").addClass("vip_one_a_after");
	 $(".vip_one_b_1 span:eq(2),.vip_one_b_2 span:eq(2)").addClass("vip_one_b_new");
	 $(".vip_one_a:eq(0),.vip_one_a:eq(1)").removeClass("vip_one_a_after");
	 $(".vip_one_b_1 span:eq(0),.vip_one_b_2 span:eq(0)").removeClass("vip_one_b_new");
	 	 $(".vip_one_b_1 span:eq(1),.vip_one_b_2 span:eq(1)").removeClass("vip_one_b_new");

	$("#vip_days").val("31")	
  });

	


});