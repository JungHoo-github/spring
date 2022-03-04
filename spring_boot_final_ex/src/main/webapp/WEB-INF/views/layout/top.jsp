<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index </title>	

		<link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/main.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/menu.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/slideShow.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/tabMenu.css'/>" rel="stylesheet" type="text/css">
		<link href="<c:url value='/css/product.css'/>" rel="stylesheet" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/subMenu.js'/>"></script>
		<script src="<c:url value='/js/slideShow.js'/>"></script>
		<script src="<c:url value='/js/tabMenu.js'/>"></script>
		<script src="<c:url value='/js/main.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
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
						<li><a href="<c:url value='/selectTag'/>">레시피</a></li>
						<li><a href="<c:url value='/product/listAllProduct/${sessionScope.sno }'/>">재료</a></li>
						<li><a href="<c:url value='/product/productbuy/${sessionScope.sno }'/>">제품구매</a></li>
						<li><a href="<c:url value='/myPage/${sessionScope.sno}'/>">마이페이지</a></li>
						<li><a href="<c:url value='/offlineMap'/>">매장정보</a></li>
						
					</ul>				
				</div>  <!-- mainMenuBox 끝 -->
			
			</nav>
			</div>
			</body>
			</html>