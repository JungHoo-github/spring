<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>마트 위치</title>
<script src="<c:url value='/js/jquery-3.6.0.min.js' />"></script>
<script src="<c:url value='/js/offlinemap.js' />"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=yggiih79l3"></script>
 <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

</head>
<body>
<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
<div id="map" style="width:800px;height:800px;margin:0px auto;"></div>
     <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />

</body>
</html>