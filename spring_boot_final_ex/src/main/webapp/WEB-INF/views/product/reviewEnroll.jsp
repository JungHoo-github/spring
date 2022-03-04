<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="<c:url value='/css/reviewpopup.css'/>" rel="stylesheet" type="text/css">
	<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	<script src="<c:url value='/js/reviewpopup.js'/>"></script>

</head>
<body>
	<div class="wrapper_div">
		<div class="subject_div">
			리뷰 등록
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
				<textarea name="revCon"></textarea>
			</div>
		</div>
		
		<div class="btn_wrap">
			<a class="cancel_btn">취소</a>
			<input type="submit" class="enroll_btn" value="등록">
		</div>
		</form>
	</div>
</body>
</html>