/**
 * 
 */

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek'
      },
      initialDate: '2022-03-12',
      local:'ko',
      events: [
        {
          start: '2022-03-11T10:00:00',
          end: '2022-03-11T16:00:00',
          display: 'background',
          color: '#ff9f89'
        },
        {
          start: '2022-03-13T10:00:00',
          end: '2022-03-13T16:00:00',
          display: 'background',
          color: '#ff9f89'
        },
        {
          start: '2022-03-24',
          end: '2022-03-28',
          overlap: false,
          display: 'background'
        },
        {
          start: '2022-03-06',
          end: '2022-03-08',
          overlap: false,
          display: 'background'
        }
      ]
    });

    calendar.render();
  });
