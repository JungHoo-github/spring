<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>Insert title here</title>
<link href="<c:url value='/css/recipeinfo.css'/>" rel="stylesheet" type="text/css">
<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
<script src="<c:url value='/js/recipe.js'/>"></script>
<script src="<c:url value='/js/timer.js'/>"></script>

</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
	<div id="wrap2">
		<div id="main_menu">
			<div class="main_top">
			<div class="main_pic">
				<div class="main_picture1">
					<img class="main_thumbs" src="<c:url value='/images/${rcp.rcpImg }' />">
				</div>	
			</div>
			<div class="main_summary">
			<h3>${rcp.rcpTitle } <button id="timer_hidden"><img src='/images/timerclock.png' width="25px" height="25px" background-color="white"></button> </h3>
				<div class="main_summary_in">
					${rcp.rcpTitle } 간단 소개
				</div>
				<div class="main_summary_info">
					<span class="main_summary_info1">2인분</span>
					<span class="main_summary_info2">10분이내</span>
					<span class="main_summary_info3">아무나</span>
				</div>
			</div>
			
			<div class="main_summary2">
			<h1 id="timer">
				<div id="ViewTimer"></div>
			</h1>
			<div id="timer_button">
				<button id="timer_start">시작</button>
				<button id="timer_stop">멈춤</button>
				<button id="timer_reset">리셋</button>
			</div>
			</div>
			<div class="main_summary3">
				<div class="main_summary3_top">
				<button id="five_minute">+5</button>
				<button id="ten_minute">+10</button>
				<button id="fifteen_minute">+15</button>
				</div>
				<div class="main_summary3_bottom">
				<button id="thirty_minute">+30</button>
				<button id="one_hour">+60</button>
				<button id="two_hour">+120</button>
				</div>
			</div>
			</div>
			<div class="main_btn">
				<div class="main_btn_r">
					<img src="/images/printer.png">
				</div>
			</div>
			<div class="blank_bottom"></div>
			<div class="cont_ingre">
				<div class="ingre_title">
					<button id="ingre_btn1">재료</button>
					<button id="ingre_btn2">조리방법</button>
				</div>
				<div class="main_bottom">
				<div class="ingre_content">
					<b class="ingre_content_title">[재료]</b>
				<ul>
				<c:choose>
					<c:when test="${rcp.recMilk eq null || rcp.recMilk eq '0'}">
					</c:when>
					<c:otherwise>
					<li>우유<span class="ingre_content_unit">${rcp.recMilk }</span></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${rcp.recYeast eq null || rcp.recYeast eq '0'}">
					</c:when>
					<c:otherwise>
					<li>이스트<span class="ingre_content_unit">${rcp.recYeast }</span></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${rcp.recSalt eq null || rcp.recSalt eq '0'}">
					</c:when>
					<c:otherwise>
					<li>소금<span class="ingre_content_unit">${rcp.recSalt }</span></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${rcp.recSugar eq null || rcp.recSugar eq '0'}">
					</c:when>
					<c:otherwise>
					<li>설탕<span class="ingre_content_unit">${rcp.recSugar }</span></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${rcp.recButter eq null || rcp.recButter eq '0'}">
					</c:when>
					<c:otherwise>
					<li>버터<span class="ingre_content_unit">${rcp.recButter }</span></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${rcp.recStrongflour eq null || rcp.recStrongflour eq '0'}">
					</c:when>
					<c:otherwise>
					<li>강력분<span class="ingre_content_unit">${rcp.recStrongflour }</span></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${rcp.recMiddleflour eq null || rcp.recMiddleflour eq '0'}">
					</c:when>
					<c:otherwise>
					<li>중력분<span class="ingre_content_unit">${rcp.recMiddleflour }</span></li>
					</c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${rcp.recEgg eq null || rcp.recEgg eq '0'}">
					</c:when>
					<c:otherwise>
					<li>달걀<span class="ingre_content_unit">${rcp.recEgg }</span></li>
					</c:otherwise>
				</c:choose>
				</ul>
				</div>
				<div  class="recipe_content">
					<b class="ingre_content_title">[조리방법]</b>
					
					<a>${rcp.rcpContent }</a>

				</div>
			</div>
			</div>
			<hr>
			<!-- -------------------    reply -----------------------      -->
		<div class="container" id="reply">
		<label for="comment">Comments:</label>
			<form method="post" action="/insertReply">

				<input type="hidden" name="rcpNo" value="1">
				<!-- 게시글 번호 받아와야함 지금못하니까 대체해서 사용 -->
				<div class="card-body">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroup-sizing-default">회원
								번호</span>
							<!-- 지금은 memNo로 적지만 나중에는  ID 값으로 가져오는게 이쁠듯 -->
						</div>
						<input type="text" name="memNo" value="" placeholder="memNo"
							class="form-control" aria-label="Default"
							aria-describedby="inputGroup-sizing-default">
					</div>
					<textarea id="reply-content" class="form-control" name="repCon"
						id="exampleFormControlTextarea1" rows="3" placeholder="댓글 작성하시면 댓글이 보입니다."></textarea>			
						<br>
						
					 <button type="submit" class="btn btn-warning" id="submiBtn">Submit</button>
				</div>

			</form>

			<div class="container">
				<div class="card-header">댓글 리스트</div>
				<ul id="reply--box" class="list-group">
					<c:forEach var="repList" items="${repList}">
						<input type="hidden" value="${repList.repNo}">
						<li id="reply--1" class="list-group-item d-flex justify-content-between" >
							<div id="reply--content">${repList.repCon }</div>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="d-flex ">
								<div class="font-italic" id="replyWriter">작성자 : ${repList.memNo}
									&nbsp;&nbsp;&nbsp;</div>
									</div>
								<c:if test="${repList.memNo == sessionScope.mno}"> 
							
								<div >
								<a href="<c:url value='/deleteReplyForm/${repList.rcpNo}/${repList.repNo}'/>"
									class="btn btn-danger btn-sm"
									id="deletReply"> 삭제</a>
							</div> </c:if> 
						</li>
					</c:forEach>

				</ul>
				<br>
			</div>
			</div>
			<!--   reply END     -->
		</div>
		<section id="sub_menu">
		<iframe width="380" height="315" src="https://www.youtube.com/embed/kev30RMy3Xc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>
<iframe width="380" height="315" src="https://www.youtube.com/embed/erADFxcHvw0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>
<div id="b1"><a href="<c:url value='/BoradList'/>"><img src="<c:url value='/images/b1.png'/>"class="b1"></a></div>
<div id="b1"><a href="<c:url value='/product/listAllProduct'/>"><img src="<c:url value='/images/b2.png'/>"class="b1"></a></div>
		</section>
	</div>
	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
</body>
</html>