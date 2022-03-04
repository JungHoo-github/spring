<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
					<img class="main_thumbs" src="<c:url value='/image/${rcp.rcpImg }' />">
				</div>	
			</div>
			<div class="main_summary">
			<h3>${rcp.rcpTitle } <button id="timer_hidden"><img src='/image/timerclock.png' width="25px" height="25px" background-color="white"></button> </h3>
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
					<img src="/image/printer.png">
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
					<li>우유<span class="ingre_content_unit">50g</span></li>
					<li>이스트<span class="ingre_content_unit">4g</span></li>
					<li>소금<span class="ingre_content_unit">5g</span></li>
					<li>설탕<span class="ingre_content_unit">6g</span></li>
					<li>무염버터<span class="ingre_content_unit">10g</span></li>
				</ul>
				</div>
				<div  class="recipe_content">
					<b class="ingre_content_title">[조리방법]</b>
					
					<a>${rcp.rcpContent }</a>

				</div>
			</div>
			</div>
		</div>
		<section id="sub_menu">
		서브
		</section>
	</div>
	<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
</body>
</html>