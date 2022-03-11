<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap" rel="stylesheet">
<title>List</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style type="text/css">
#img img {
	width: 90% !important;
	height: 150px;
	text-align:center;
}

table {
	border-collapse: collapse;
	background-color: #EDDBC3;
	border-radius: 8px;
	font-family: 'Do Hyeon', sans-serif;
	margin: 0 auto;
}

table #blank {
	height: 20px;
	background-color:white;
}

#title {
	width: 70%;
	height: 70px;
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

</style>

</head>
<body>
<br><br>
			
			
			<table class="table table-hover" >
				<c:forEach var="board" items="${selectTagList}">
					<tr><td colspan="4" id="title"><a href="<c:url value='/board/detailView/${board.brdNo}'/>">${board.brdTitle}</a></td><td id="blank_r" rowspan="2"></td>
					<td rowspan="2" id="img">${board.brdImg}</td></tr>
					<tr><td class="row">작성자</td><td class="row">${board.memId}</td><td class="row">작성일</td><td class="row"><fmt:formatDate value="${board.brdDate }" pattern="yyyy-MM-dd"/> </td></tr>
					<tr id="blank"><td colspan="6"></td></tr>
				</c:forEach>
    		</table>

	
</body>
</html>