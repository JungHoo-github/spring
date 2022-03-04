<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myBoard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="<c:url value='/css/myboard.css'/>" rel="stylesheet" type="text/css">
<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
</head>

<body> <div id="wrap_m">
   <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
   </div>
   <div id="nav_m">
   <div id="nav-bar">
   		<ul class="nav nav-tabs">
<c:forEach items="${brdlist}" var="brd" begin="0" end="0">	
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="/myBoard/${brd.brdNo}">내가 쓴 글</a>
  </li>
   
   <li class="nav-item">
    <a class="nav-link" href="/board/updateBoard/${brd.brdNo}">수정</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/">home</a>
   </li>
   </c:forEach>
</ul>
</div>
<form action="<c:url value="/myBoard"/>">

 <table class="shadow-none p-3 mb-5 bg-light rounded"> 
 
<c:forEach items="${brdlist}" var="brd">	
<tr id="b_r">
<td><input type="checkbox" class="chkDelete" data-brdNo="${brd.brdNo}" name="chkDelete"></td>
<td>${brd.brdTitle}</td>

<td>${brd.brdDate}</td>
<td>${brd.brdRecommend}</td>
<td></td>
</tr>
</c:forEach>
  <thead>
   <tr><td colspan=1 rowspan=2 id=Btn><button  id="deleteBoard"class="btn btn-outline-warning">삭제</button></td>
   <td colspan=1 rowspan=2 id=Btn><button  id="deleteBoard"class="btn btn-outline-warning">수정</button></td>
   <td colspan=2 rowspan=2><h4>내가 쓴 글</h4></td></tr>
   <tr><td></td></tr>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Title</th>
      <th scope="col">Date</th>
      <th scope="col">Recommend</th>
      <th></th>
    </tr>
  
  </thead>
 
  
</table>
<div>
<ul class="pagination justify-content-center">
<li><a href="#" style="margin-right:5px ;" class="text-secondary" >◁</a></li>
<li><a href="#" style="margin-right:5px ;" class="text-secondary" >1</a></li>
<li><a href="#" style="margin-right:5px ;" class="text-secondary" >▷</a></li>
</ul>
</div>
</form>
</div>
<script src="<c:url value='/js/myBoard.js'/>"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
 
</body>
</html>