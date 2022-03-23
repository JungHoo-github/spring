<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

<meta charset='utf-8' />
<script src="<c:url value='/js/jquery-3.6.0.min.js' />"></script>
<script src="<c:url value='/js/cal.js' />"></script>
<link href="<c:url value='/css/cal.css'/>" rel="stylesheet" type="text/css">
<link href="<c:url value='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.css' />" rel='stylesheet' />
<script type="text/javascript" src="<c:url value='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.2/main.min.js'/>"></script>



  <title>
   FullCalendar
  </title>



  


</head>
<body>
<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
  <div class='demo-topbar'>
  <button data-codepen class='codepen-button'>Edit in CodePen</button>

  

  
    Click between month and week view to see background events
  
</div>

  <div id='calendar'></div>
       <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
</body>

</html>



