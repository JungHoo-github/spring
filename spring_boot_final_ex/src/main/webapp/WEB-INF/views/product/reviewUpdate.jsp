<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="<c:url value='/css/reviewpopup2.css'/>" rel="stylesheet" type="text/css">
	<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	<script>
		$(document).ready(function(){
			
			let rating = '${reviewInfo.rating}';
			
			$("option").each(function(i,obj){
				if(rating === $(obj).val()){
					$(obj).attr("selected", "selected");
				}
			});
		
		
		/* 취소 버튼 */
		$(".cancel_btn").on("click", function(e){
			window.close();
		});
		
		/* 수정 버튼 */
		$(".update_btn").on("click", function(e){
				
			const revNo = '${reviewInfo.revNo}';
			const prdNo = '${reviewInfo.prdNo}';
			const memNo = '${memNo}';
			const rating = $("select").val();
			const revCon = $("textarea").val();
			
			const data = {
					revNo : revNo,
					prdNo : prdNo,
					memNo : memNo,
					rating : rating,
					revCon : revCon
			}
			
			$.ajax({
				data:data,
				type:"POST",
				url:"/review/update",
				success : function(result){
					$(opener.location).attr("href","javascript:reviewListInit();");			
					window.close();		
				}
			});
		});
	});
	</script>
</head>
<body>
	<div class="wrapper_div">
		<div class="subject_div">
			리뷰 수정
		</div>
		<form id="input_form">
		<div class="input_wrap">
			<div class="prdName_div">
				<h2>${prd.prdName }</h2>
				<input type="hidden" name="prdNo" id="prdNo" value="${prd.prdNo }">
				<input type="hidden" name="memNo" id="memNo" value="${memNo }">
				
			</div>
			<div class="rating_div">
				<h4>평점</h4>
				<select name="rating">
					<option value="0.5">0.5</option>
					<option value="1.0">1.0</option>
					<option value="1.5">1.5</option>
					<option value="2.0">2.0</option>
					<option value="2.5">2.5</option>
					<option value="3.0">3.0</option>
					<option value="3.5">3.5</option>
					<option value="4.0">4.0</option>
				</select>
			</div>
			<div class="content_div">
				<h4>리뷰</h4>
				<textarea name="revCon">${reviewInfo.revCon }</textarea>
			</div>
		</div>
		
		<div class="btn_wrap">
			<a class="cancel_btn">취소</a> <a class="update_btn">수정</a>
		</div>
		</form>
	</div>
</body>
</html>