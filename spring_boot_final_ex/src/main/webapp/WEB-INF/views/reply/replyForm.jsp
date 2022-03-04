<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
    <script src="/js/jquery-3.6.0.min.js"></script>
  </head>
  <body>
 <div class ="card">
  <form method="post" action="/insertReply">
 
 	<input type="hidden" name="brdNo" value="1"><!-- 게시글 번호 받아와야함 지금못하니까 대체해서 사용 -->
  <div class="card-body">
	<div class="input-group mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-default">회원 번호</span> <!-- 지금은 memNo로 적지만 나중에는  ID 값으로 가져오는게 이쁠듯 -->
	  </div>
	  <input type="text" name="memNo" value="" placeholder="memNo" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default">
	</div>
 	  <textarea  id="reply-content" class="form-control" name="repCon" id="exampleFormControlTextarea1" rows="3"></textarea>
 	</div>
 	  <div class="card-footer">
 	  <input type="submit" id="submitBtn" value="등록" >
 	</div>
 	
  </form>
 </div><br/>
 
 <div class="card">
	<div class="card-header">댓글 리스트</div>
	<ul id="reply--box" class="list-group">
	<c:forEach var="repList" items="${repList}">
	<input type="hidden" value="${repList.repNo}">
	 <li id="reply--1" class="list-group-item d-flex justify-content-between"><!--d-flex : flex로 바꾸는 부트스트랩 코드-->
      <div>${repList.repCon }</div>
      <div class="d-flex ">
       <div class="font-italic">작성자 : ${repList.memNo} &nbsp;&nbsp;&nbsp; </div>
       <a href="<c:url value='/deleteReplyForm/${repList.brdNo}/${repList.repNo}'/>"
       class="btn btn-danger btn-sm"
       onClick="return window.confirm(삭제?)">
        삭제</a>
      </div>
     </li>
     </c:forEach>
     
	</ul>
 </div>
 
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <script src="/js/ReplyForm.js"></script>
  </body>
</html>