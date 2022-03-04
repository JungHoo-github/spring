<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List</title>
<link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css">
<link href="<c:url value='/css/tagify.css'/>" rel="stylesheet" type="text/css">
<link href="<c:url value='/css/insertForm.css'/>" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&display=swap" rel="stylesheet">

<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script src="<c:url value='/js/jQuery.tagify.min.js'/>"></script>
<script>
$(document).ready(function () {
    $('#summernote').summernote({
        placeholder: '내용을 입력해주세요',
        tabsize: 2,
        height: 400
    });
    $('#submit_btn').on('click', function () {
        alert("글이 성공적으로 등록되었습니다!");
        window.history.go(-2);
    });
    $('[name=brdTag]').tagify({duplicates :false});
});
</script>

<!-- <script src="/js/board.js"></script> -->
</head>

<body>
			<div id="wrap_b">
			<header>
				<div id="headerBox">
					<div id="logoBox"><a href="<c:url value='/'/>"><img src="<c:url value='/images/logo.png'/>"class="logoImg"></a></div>
					<div id="topMenuBox"></div>
				</div>
			</header>
			<nav>
				<div id="mainMenuBox">
					<ul id="menuItem">
						<li><a href="<c:url value='/BoardList'/>">게시판</a></li>
						<li><a href="#">레시피</a></li>
						<li><a href="<c:url value='/product/listAllProduct/${sessionScope.sno }'/>">재료</a></li>
						<li><a href="<c:url value='/product/productbuy/${sessionScope.sno }'/>">제품구매</a></li>
						<li><a href="<c:url value='/myPage/${sessionScope.sno}'/>">마이페이지</a></li>
						<li><a href="<c:url value='/offlineMap'/>">매장정보</a></li>
						
					</ul>				
				</div>  <!-- mainMenuBox 끝 -->
			
			</nav>
			</div>

 	<div id="wrap">
	<br><br><br>	
		
		
    <form id="insertForm" name="insertForm" method="post"  action="<c:url value='/insertBoard'/>">
     
     <br>

     <table id="insert">
    
        <tr><th>제목</th><td>
        <input type="text" class="form-control" id="brdTitle" name="brdTitle">
      </td></tr>
        <tr><th>작성자</th><td>
        <input type="text" class="form-control" id="memNo" name="memNo" value="${sessionScope.sno }">
      </td></tr>
      <tr><th id="content">내용</th><td>
        <textarea class="form-control" name="brdCon" id="summernote" rows="5"></textarea>
      </td></tr>
      <tr><th>태그</th><td>
      	<input class="form-control" name="brdTag" placeholder="태그를 입력하세요.">
      </td></tr>
      <tr><th colspan="2" id="button"><button type="submit" class="btn btn-primary">작성</button>
	  </th></tr>
    </table>
    <input type="hidden" name="brdImg" id="brdImg">
    </form>
<br><br><br>
	<!-- BOTTOM  -->
	
	</div>
	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
</body>
</html>