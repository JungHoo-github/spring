<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="<c:url value='/css/updateMyPage.css'/>" rel="stylesheet"
	type="text/css">
<title>updateMyPage 입니다.</title>
</head>
<body>
	<div id="wrap_m">
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />

		<div id="nav_m">
			<div id="nav-bar">

				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/updateMyPageForm/${mem.memNo}">수정하기</a>
					</li>

					<li class="nav-item"><a class="nav-link"
						href="/myPage/${mem.memNo}">home</a></li>

				</ul>
			</div>
		</div>
		<br>
		<br>
		<div id=wrap2>
			<form method="post" action="<c:url value='/updateMyPage'/>">
				<input type="hidden" name="memNo" value="${mem.memNo}">
				<div class="input-group mb-3">
					<span class="input-group-text" id="inputGroup-sizing-default">이름</span>
					<input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default" name="memName"
						value="${mem.memName}">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="inputGroup-sizing-default">비밀번호</span>
					<input type="password" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default" name="memPwd"
						value="${mem.memPwd}">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="inputGroup-sizing-default">이메일</span>
					<input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default" name="memEmail"
						value="${mem.memEmail}">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="inputGroup-sizing-default">전화
						번호</span> <input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default" name="memHP"
						value="${mem.memHP}">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="inputGroup-sizing-default">지번</span>
					<input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default" name="memZipcode"
						value="${mem.memZipcode}">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="inputGroup-sizing-default">기본
						주소</span> <input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default" name="memAddress1"
						value="${mem.memAddress1}">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="inputGroup-sizing-default">상세주소</span>
					<input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default" name="memAddress2"
						value="${mem.memAddress2}">
				</div>
				<div class="input-group mb-3">
					<span class="input-group-text" id="inputGroup-sizing-default">알러지
						정보</span> <input type="text" class="form-control"
						aria-label="Sizing example input"
						aria-describedby="inputGroup-sizing-default" name="memAllergyInfo"
						value="${mem.memAllergyInfo}">
				</div>

				<div class="d-grid gap-2">
					<button class="btn btn-warning" type="submit" id="confirm">수정</button>
					<button class="btn btn-warning" type="reset">취소</button>
				</div>
			</form>
		</div>
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
	</div>
	<script src="/js/ReplyForm.js"></script>
	<script src="/js/update.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
</body>
</html>