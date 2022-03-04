<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link href="<c:url value='/css/updateMyPage.css'/>" rel="stylesheet" type="text/css">
    <title>updateMyPage 입니다.</title>
  </head>
  <body>
   		
   		<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="/myPage/${mem.memNo}">mypage</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/updateMyPageForm/${mem.memNo}">수정하기</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/myBoard/${mem.memNo}">내가 쓴 글</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">장바구니</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/">home</a>
  </li>
 
</ul>
<br><br>
<div id=wrap>
		 <form method="post" action="<c:url value='/updateBoard'/>">
 	<input type="hidden" name="brdNo" value="${brd.brdNo}">
	<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default">제목</span>
  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" name="brdTitle" value="${brd.brdTitle}">
</div>
<div class="input-group mb-3">
  <span class="input-group-text" id="inputGroup-sizing-default">내용</span>
  <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" name="brdCon" value="${brd.brdCon}">
</div>

<div class="d-grid gap-2">
  <button class="btn btn-primary" type="submit" id="confirm">수정</button>
  <button class="btn btn-primary" type="reset">취소</button>
</div>
	</form>
	</div>
	<script src="<c:url value='/js/update.js'/>"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
  </body>
</html>