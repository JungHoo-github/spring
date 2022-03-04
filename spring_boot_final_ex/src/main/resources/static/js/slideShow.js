/**
 * 
 */

$(function(){
	var movedIndex = 0;
	
	//슬라이드 패널을 움직이는 함수
	function moveSlide(index){
		movedIndex = index;
		//슬라이드 이동
		var moveLeft = -(index * 1280);
		$('#slidePanel').animate({'left':moveLeft}, 'slow');
		
	}
	
	$('#prevButton').on('click', function(){
		if(movedIndex != 0)
		movedIndex = movedIndex - 1;
		moveSlide(movedIndex);
		
	});
	
	$('#nextButton').on('click', function(){
		if(movedIndex != 4)
		movedIndex = movedIndex + 1;
		moveSlide(movedIndex);
		
	});
	
	//초기 슬라이더 위치랜덤
	
	var rNum = Math.floor(Math.random()*5);
	moveSlide(rNum);
	
	
	//각 컨트롤버튼 
	$('.controlButton').each(function(index){
		$(this).hover(
			function(){
				$(this).attr('src', '/images/controlButton2.png');
			},
			function(){
				$(this).attr('src', '/images/controlButton1.png');
			}
		);
		$(this).on('click', function(){
			moveSlide(index);
		});
	});
});