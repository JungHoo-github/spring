/**
 * 
 */

$(function(){
	//[전체보기] 메뉴항목 클릭 시 모든 서브메뉴항목 보이게
	$("#showAllMenu").on('click', function(){
		
		if($(this).text() == '레시피 ▼'){
			$('#subMenuBox').css('visibility', 'visible');
			$(this).text('레시피 ▲').css('color','black');
			
		}else {
			$('#subMenuBox').css('visibility', 'hidden');
			$(this).text('레시피 ▼').css('color','white');}
	});
	
});