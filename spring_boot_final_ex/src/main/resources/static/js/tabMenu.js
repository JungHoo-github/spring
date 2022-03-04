/**
 * 
 */

$(function(){
	var $tabContent = $('#tabContent div');
	
	$('#tab li:first-child').addClass('selectedItem');
	
	$('#tab li').on('click', function(){
		//클릭한탭메뉴 항목 인덱스알아오기
		var index = $(this).index();
		
		//텝메뉴 항목을 선택된 이미지로 변경
		//모든 텝메뉴 항목에 선택시 적용돈 css 효과 제거하고
		$('#tab li').removeClass('selectedItem');
		
		//클릭한항목에만 선택하 css 효과 설정
		$(this).addClass('selectedItem');
		
		//content 이미지변경
		//content 모든 div 숨기고
		$tabContent.css('display', 'none');
		
		//클릭한 탭메뉴 항목의 인덱스에 해당되는 div만 보임
		$tabContent.eq(index).css('display', 'block');
		
	});
});