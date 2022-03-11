<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Index</title>
		<link href="<c:url value='/css/index.css'/>" rel="stylesheet" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/index.js'/>"></script>
		</head>
		<body>
			 <div id="mainWrap">

			  <div id="buttons">
			  <c:if test="${empty sessionScope.sid }">
					<a href="<c:url value='/loginForm'/>" id="loginBtn"><img src="./images/loginButton.png"></a> 	
					<a href="<c:url value='/joinForm'/>" id="signUpBtn"><img src="./images/signUpButton.png"></a>
					<div id="Backgroundimg"><img src="/images/ClosedOven.png" class="img"></div>				
			  </c:if> 
			  <c:if test="${not empty sessionScope.sid}">
				<a href="<c:url value='/main'/>" id="mainPageBtn"><img src="./images/mainPageButton.png"></a> 	
			    <a href="<c:url value='/myPage/${sessionScope.sno}'/>" id="mypageBtn"><img src="./images/mypageButton.png"></a>			
				<a href="<c:url value='/logout'/>" id="logoutBtn"><img src="./images/logoutButton.png"></a> 	
				<a href="<c:url value='/productInfo/cartList'/>" id="cartBtn"><img src="./images/cartButton.png"></a>
				<div id="Backgroundimg"><img src="./images/openOven.png" class="img"></div> 
													
			  </c:if> 
			    </div>				   
	    

			    </div> <!--  mainWrap end -->		
		</body>
</html>