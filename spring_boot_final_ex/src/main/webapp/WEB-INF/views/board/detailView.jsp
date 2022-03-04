<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 <link href="<c:url value='/css/detailView.css'/>" rel="stylesheet"
	type="text/css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap" rel="stylesheet">
<title>List</title>
</head>
<body>
 	<div id="wrap_d">
			
		<!-- TOP  -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
		 
		
	<form id="detailForm" method="post" action="<c:url value='/BoardList'/>">
		
		<br><br>
		<table id="detail">
			<tr><th class="bottom_line" colspan="3">${board.brdTitle }</th><th class="bottom_line"><button><a href="#" onclick="javascript:recommendUp();">추천</a></button>&nbsp&nbsp${board.brdRecommend }</th></tr>
				<script type="text/javascript">
			
				function recommendUp(){
					var answer = confirm("이 레시피를 추천하십니까?");
					if(answer == true){
						location.href="/board/recommendUp/${board.brdNo}";
					}
				}
			</script>
			
			<tr><th class="bottom_line">작성자</th><th class="bottom_line">${board.memId}</th><th class="bottom_line">작성일</th><th class="bottom_line"><fmt:formatDate value="${board.brdDate }" pattern="yyyy-MM-dd"/> </th><tr>
				<tr><td class="bottom_line" colspan="4">${board.brdCon }</td></tr>
				<tr><th colspan="4"><input type="submit" value="뒤로가기">
				<c:if test="${sessionScope.sno eq board.memNo}">
				<button><a href="<c:url value='/board/updateBoard/${board.brdNo}'/>">수정하기</a></button>
				<button><a href="#" onclick="javascript:deleteCheck();">삭제하기</a></button>
			<script type="text/javascript">
			
				function deleteCheck(){
					var answer = confirm("게시글을 삭제하시겠습니까?");
					if(answer == true){
						location.href="/board/deleteBoard/${board.brdNo}";
					}
				}
			</script>

					</c:if></th>
				</tr>
		</table>
	</form>		
	<br><br>
	 
	</div>
	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' /> 
</body>
</html>