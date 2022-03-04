/**
 *  cartListView.js
 */
 
 $(document).ready(function(){
				
	$("#deleteBoard").on("click", function(){
		var checked = $(".chkDelete").is(':checked');
		if(checked){
			var answer = confirm("삭제?");
			if(answer){
				var checkArr = new Array();
				
				$(".chkDelete:checked").each(function(){
					checkArr.push($(this).attr("data-brdNo"));
				});
				
				
				$.ajax({
					url:"/deleteBoard",
					type:"post",
					data:{chbox : checkArr},
					dataType:"text",
					success:function(result){
						if(result == 1){
							location.href = "/reDirect";
						}
					},
					error:function(){
						alert("오류가 발생했습니다.")
					}
				});
			}						
		} else {
			alert("선택된 게시글이 없습니다.");
      }
   });
});