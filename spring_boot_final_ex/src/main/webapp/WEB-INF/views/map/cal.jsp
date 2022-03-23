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



  <script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
      initialDate: '',
      local:'ko',
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,
      selectable: true,
      events: [
        {
          title: 'BREAD CLASS',
          start: '2022-03-06T13:00:00',
          constraint: 'classHours'
        },
        {
          title: 'park',
          start: '2020-03-13T11:00:00',
          constraint: 'available', // defined below
          color: '#257e4a'
        },
        {
          title: 'nam',
          start: '2022-03-18',
          end: '2022-03-20'
        },
        {
          title: 'kim',
          start: '2022-03-29T20:00:00'
        },

        // areas where "Meeting" must be dropped
        {
          groupId: 'available',
          start: '2022-03-11T10:00:00',
          end: '2022-03-11T16:00:00',
          display: 'background'
        },
        {
          groupId: 'available',
          start: '2022-03-13T10:00:00',
          end: '2022-03-13T16:00:00',
          display: 'background'
        },

        // red areas where no events can be dropped
        {
          start: '2022-03-24',
          end: '2022-03-28',
          overlap: false,
          display: 'background',
          color: '#ff9f89'
        },
        {
          start: '2022-03-06',
          end: '2022-03-08',
          overlap: false,
          display: 'background',
          color: '#ff9f89'
        }
      ]
    });

    calendar.render();
  });

</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1100px;
    margin: 0 auto;
  }

</style>


</head>
<body>
<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />


  <div id='calendar' style="position : relative;">
  <div>
  <button class = "add-button" type="button"
  onclick="click_add();">일정 추가</button>
  </div>
  </div>
  

       <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
</body>

</html>



