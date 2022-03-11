<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<!-- TOP  -->
	<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' /> 
		
		<section>
				<article id="slideShow"> <!-- 슬라이드 쇼  -->
					<!-- 이전/다음 버튼 -->
					<div id="prevNextButtonBox">
						<img id="prevButton" src="<c:url value='/images/prevButton.png'/>">
						<img id="nextButton" src="<c:url value='/images/nextButton.png'/>">
					</div>				
					<div id="slideShowBox">
						<div id="slidePanel">
							<img src="<c:url value='/images/slide_img_01.png'/>" class="slideImage">
							<img src= "<c:url value='/images/slide_img_02.png'/>" class="slideImage">
							<img src="<c:url value='/images/slide_img_03.png'/>" class="slideImage">
							<img src="<c:url value='/images/slide_img_04.png'/>" class="slideImage">
							<img src= "<c:url value='/images/slide_img_05.png'/>"class="slideImage">
						</div>
					</div> <!-- slideShowBox 끝 -->
					<div id = "controlPanel">
						<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
						<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
						<img src="<c:url value='/images/controlButton1.png'/>"class="controlButton">
						<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
						<img src="<c:url value='/images/controlButton1.png'/>" class="controlButton">
					</div>
				</article>
				
			<br><br>
				
				<article id="content2"> <!-- 베스트 상품 -->
					<div id="productBox">
						<img src="<c:url value='/images/anni.png'/>">
						<div class="product">
							<div><a href="#"><img src="<c:url value='/images/prd01.png'/>"></a></div>
							<div><a href="#"><img src="<c:url value='/images/prd02.png'/>"></a></div>
							<div><a href="#"><img src="<c:url value='/images/prd03.png'/>"></a></div>
						</div>
						
					</div>
				</article>
			</section>
			
			<!-- BOTTOM  -->
		   <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
		   <jsp:include page="/WEB-INF/views/chatbot/chatbotForm.jsp" flush='true' />
</body>
</html>