/**
 * 
 */
 $(function(){
 	$('#ingre_btn1').on('click',function(){
		if($(".ingre_content").css("display") == "none"){
			$('.ingre_content').show();
			$('.recipe_content').hide();
			$('#ingre_btn1').addClass("active");
			$('#ingre_btn2').removeClass("active");
		} else {
			$('.ingre_content').hide();
			$('#ingre_btn1').removeClass("active");
			}
	});	

 	$('#ingre_btn2').on('click',function(){

		if($('.recipe_content').css("display") == "none"){
			$('.recipe_content').show();
			$('.ingre_content').hide();
			$('#ingre_btn2').addClass("active");
			$('#ingre_btn1').removeClass("active");
		} else {
			$('.recipe_content').hide();
			$('#ingre_btn2').removeClass("active");
			}
	});
	
	/*$('#timer_hidden').on('click',function(){
		if($('.main_summary2').css("display") == "none"){
			$('.main_summary2').show();
			$('.main_summary3').show();
		} else {
			$('.main_summary2').hide();
			$('.main_summary3').hide();
		}
	});*/
	
});