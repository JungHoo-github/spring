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
<link href="<c:url value='/css/mypage.css'/>" rel="stylesheet"
	type="text/css">
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap"
	rel="stylesheet">

<title>mypage 입니다.</title>
</head>
<body>
	<div id="wrap_m">
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	</div>
	<div id="nav_m">
		<div id="nav-bar">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">mypage</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/updateMyPageForm/${mem.memNo}">수정하기</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/myBoard/${mem.memNo}">내가 쓴 글</a></li>
				<li class="nav-item" ><a
					class="nav-link btn-open-popup"
					href="#">회원탈퇴</a></li>
				
				</li>
			</ul>
		</div>
		<div class="modal">
			<div class="modal_body">
				<h1>탈퇴 하시겠습니까?</h1>
				<input type="hidden" id="checkPwd" value="${mem.memPwd }">
				<input type="password" class="form-control" id="InputPassword" placeHolder="패스워드를 입력해주세요">
				<br>
				<form method="post" action="/deleteMyPageForm/${mem.memNo}" id="deleteIdForm">
					<div class="d-grid gap-2 col-6 mx-auto">
						<button class="btn btn-warning me-md-2" type="submit" id="deleteIdBtn">탈퇴</button>
					</div>
				</form>
			</div>
		</div>
		<div class="container">
			<div class="firstColunm">
				<div id="name">
					<h2>프로필</h2>
					<br>
					<h3>이름</h3>
					<h4>${mem.memName}</h4>
					<br>
					<br>
				</div>
				<div id="email">
					<h2>연락처 및 전화번호</h2>
					<br>
					<h4>${mem.memEmail}</h4>
					<br>
					<h4>${mem.memHP}</h4>
					<br>
					<br>
				</div>
			</div>
			<div class="secondColunm">
				<div id="address">
					<h2>주소</h2>
					<br>
					<h4>${mem.memZipcode}<br>${mem.memAddress1}<br>${mem.memAddress2}</h4>
					<br>
					<br>
				</div>
				<div id="allergyInfo">
					<h2>알러지 정보</h2>
					<br>
					<h4>${mem.memAllergyInfo}</h4>
					<br>
					<br>
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
	<script src="/js/deleteIdModal.js"></script>
	<script src="/js/Mypage.js"></script>
</body>
</html>