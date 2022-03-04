/**
 * review 
 */
 
$(document).ready(function(){
	$(".cancel_btn").on("click", function(e){
		window.close();
	});
	
	$("#input_form").on("submit",function(e){
		
		event.preventDefault();
		
		var formData = $(this).serialize();
		
		/*const prdNo = $("#prdNo").val();
		const memNo = $("#memNo").val();
		const rating = $("select").val();
		const revCon = $("textarea").val();
		alert(prdNo);
		alert(memNo);
		alert(rating);
		const data = {
			prdNo : prdNo,
			memNo : memNo,
			rating : rating,
			revCon : revCon
		}*/
		
		/*$.ajax({
			data : data,
			type : 'POST',
			url : '/review/Enroll',
			success : function(result){
				window.close();
			}
		});*/
		
		$.ajax({
			type:"POST",
			url:"/review/enroll",
			data:formData,  
			success:function(result){   // 컨트롤러에서 반환한 prdList를 result가 받음	
				/* 댓글 초기화 */
				$(opener.location).attr("href","javascript:reviewListInit();");			
				window.close();			
			}
		});
	});
});
 