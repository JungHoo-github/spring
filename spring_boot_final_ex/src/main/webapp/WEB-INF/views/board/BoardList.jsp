<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value='/css/BoardList.css'/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value='/css/common.css'/>" rel="stylesheet"
	type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap" rel="stylesheet">
<title>List</title>
<style type="text/css">
#img img {
	width: 90% !important;
	height: 150px;
	text-align:center;
}

table {
	border-collapse: collapse;
	width: 1000px;
	background-color: #EDDBC3;
	border-radius: 8px;
	font-family: 'Do Hyeon', sans-serif;
	margin: 0 auto;
}

table #blank {
	height: 20px;
	background-color:orange;
}

#title {
	
	font-weight:bold;
	font-size:25px;
	text-align:center;
}

.row {
	width:17%;
	height:70px;
	color:black;
	text-align:center;
	font-size: 20px;
	
}
#blank_r{
	width:10%;
}
#button_r{
	width:100%; 
 	padding-left:20%; 
	margin-bottom:20px;
	text-align:center;
	font-family: 'Do Hyeon', sans-serif;
	font-size: 20px;
}

#button{
	background-color:#EDDBC3;
	border:none;
	border-radius: 8px;
	font-family: 'Do Hyeon', sans-serif;
	font-size: 20px;
	
}
.pagelist{
text-align:center;
}
.pagelist a{
background-color:#EDDBC3;
color:white;
border-radius: 8px;
font-family: 'Do Hyeon', sans-serif;
font-size: 20px; 
text-align:center;
padding:5px;
text-decoration:none;
}
.pagelist b { 
background-color:#EDDBC3;
color:black;
font-family: 'Do Hyeon', sans-serif;
font-size: 20px; 
border-radius: 8px;
text-align:center;
padding:5px;
}
.container{
width:80%;
margin:0 auto;}
/* #title {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 20px;
	position: center;
	margin: 0 auto;
}

#img img {
	width: 70px !important;
	height: 100px;
}

table {
	border-collapse: collapse;
	width: 65%;
	background-color: #EDDBC3;
	border-radius: 8px;
	font-family: 'Do Hyeon', sans-serif;
	margin: 0 auto;
}

table #blank {
	background-color: white;
} */
</style>
</head>
<body>
	<div id="wrap">

<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		<div class="container">
		<br><br>
			<form id="insertForm" name="insertForm" method="post"
				action="<c:url value='/insertForm'/>">
				
				
			<div id="button_r">총 ${paging.total}개의 게시글이 있습니다.&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <c:if test="${not empty sessionScope.sid}"> <input id="button" type="submit" value="글쓰기"></c:if></div>
						
					<table class="table table-hover">
						<c:forEach var="board" items="${boardList}">
					<tr><td colspan="4" id="title"><a href="<c:url value='/board/detailView/${board.brdNo}'/>">${board.brdTitle}</a></td><td id="blank_r" rowspan="2"></td>
					<td rowspan="2" id="img">${board.brdImg}</td></tr>
					<tr><td class="row">작성자</td><td class="row">${board.memId}</td><td class="row">작성일</td><td class="row"><fmt:formatDate value="${board.brdDate }" pattern="yyyy-MM-dd"/> </td></tr>
					<tr id="blank"><td colspan="6"></td></tr>
				</c:forEach>
    		</table>
				<input type="hidden" name="nowPage" value="1">

			</form>
			
				 <!-- 페이지 넘기기 -->
				<div class="pagelist">
					<c:if test="${paging.startPage != 1 }">
						<a href="<c:url value='/BoardList/?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}'/>">‹</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>&nbsp${p }&nbsp</b>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<a href="<c:url value='/BoardList/?nowPage=${p }&cntPerPage=${paging.cntPerPage}'/>">&nbsp${p }&nbsp</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage }">
						<a href="<c:url value='/BoardList/?nowPage=${paging.endPage + 1 }&cntPerPage=${paging.cntPerPage}'/>">›</a>
					</c:if>
				</div>	

		</div>
<br><br><br>

	</div>
	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
</body>
</html>