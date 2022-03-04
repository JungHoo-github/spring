<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title><%-- 
<link href="<c:url value='/css/board.css'/>" rel="stylesheet" type="text/css"> --%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
 <!-- <script>
	function selectTag(tagName){
		alert(aa);
		
		$.ajax({
			type:"post",
			url:"selectTag",
			data:tagname,  
			success:function(result){  
				//alert(result.length);
				// 반환된 결과(ArrayList<ProductVO>)를  searchResultbox에 테이블 형태로 출력
				$('#searchResultbox').empty();
				$('#searchResultbox').append('<table id="resultTable" border="1" width="600">');
				if(result == ""){
					$('#resultTable').append('<tr align="center"><td colspan="4">찾는 글이 없습니다.</td></tr>');
				}else{
					for(var i=0; i <result.length; i++){
						$('#resultTable').append('<tr><td colspan="2"><a href="<c:url value=\'/board/detailView/' + result[i].brdNo + '\'/>"></td><td>' +
																			               result[i].brdTitle + '</a></td><td rowpan="3">' +
																			               result[i].brdImg+ '</td></tr><tr><td>' +
																			               result[i].memNo + '</td><td>' +
																			               result[i].brdDate + '</td></tr><tr><td></td></tr>';
																			               
					       /* '<img src="/images/' + result[i].prdNo + '.jpg" width="30" height="20"></td></tr>'); */
					}
					
				}
				
				$('#searchResultbox').append('</table>');
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
		
		/* var answer = confirm("선택한 상품을 삭제하시겠습니까?");
		if(answer == true){
			location.href="/product/deleteProduct/${prd.prdNo}"; */
		}
	}

</script> --> 
</head>
<body>
	<div id="wrap">
			<div id="tagList">
				<!-- <form id="selectTag" name="selectTag" method="post"  action="<c:url value='/selectTag'/>"> -->
				<h2>태그목록</h2>
				
				대분류
				<c:forEach var="tag" items="${selectTag}" begin="0" end="1" step="1" varStatus="">
					<a href="javascript:selectTag(${tag.tagName});">${tag.tagName}</a>
				</c:forEach>
				<br>맛
				<c:forEach var="tag" items="${selectTag}" begin="2" end="4" step="1" varStatus="">
					<a href="#" onclick="javascript:selectTag(tagName);">${tag.tagName}</a>
				</c:forEach>
				<br>기념일
				<c:forEach var="tag" items="${selectTag}" begin="5" end="8" step="1" varStatus="">
					<a href="#" onclick="javascript:selectTag(tagName);">${tag.tagName}</a>
				</c:forEach>
				<br>재료
				<c:forEach var="tag" items="${selectTag}" begin="9" end="17" step="1" varStatus="">
					<a href="#" onclick="javascript:selectTag(tagName);">${tag.tagName}</a>
				</c:forEach>
				<br>테마
				<c:forEach var="tag" items="${selectTag}" begin="18" end="21" step="1" varStatus="">
					<a href="#" onclick="javascript:selectTag(tagName);">${tag.tagName}</a>
				</c:forEach>
				<br>식감
				<c:forEach var="tag" items="${selectTag}" begin="22" end="24" step="1" varStatus="">
					<a href="#" onclick="javascript:selectTag(tagName);">${tag.tagName}</a>
				</c:forEach>
				
		<!-- 	</form> -->
			</div> 
	
			<div id="searchResultbox"></div>
			<!-- <div id="recipeList">
				<form id="selectTag" name="selectTag" method="post"  action="<c:url value='/selectTag'/>">
        		<table class="table table-hover">
					<c:forEach var="board" items="${boardList}">
					<tr><td colspan="2"><a href="<c:url value='/board/detailView/${board.brdNo}'/>">${board.brdTitle}</a></td>
					<td rowspan="3" id="img">${board.brdImg}</td></tr>
					<tr><td>${board.memNo}</td><td>${board.brdDate}</td></tr>
					<tr id="blank"><td colspan="3"></td></tr>
				</c:forEach>
    			</table>
   				</form>											
			</div> -->
	
	</div>
</body>
</html>