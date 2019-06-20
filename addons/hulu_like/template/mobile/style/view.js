$(document).ready(function(){

	  $(".view_one_a").click(function(){
	      $(".view_one_b").removeClass("view_one_new");
	      $(".view_one_a").addClass("view_one_new");
    $("#view_body2").hide();
	  $("#view_body1").show();


  });

  $(".view_one_b").click(function(){
	      $(".view_one_a").removeClass("view_one_new");
	      $(".view_one_b").addClass("view_one_new");
    $("#view_body1").hide();
	  $("#view_body2").show();


  });



});


$(document).ready(function () {

  var mySwiper = new Swiper ('.swiper-container', {
    //direction: 'vertical',
    loop: true,
			autoplay: 5000,

    
    pagination: '.swiper-pagination',
    
    //nextButton: '.swiper-button-next',
    //prevButton: '.swiper-button-prev',
    
    //scrollbar: '.swiper-scrollbar',
  });

});
