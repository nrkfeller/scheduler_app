$(document).ready(handle_student_show_page)
$(document).on('page:load', handle_student_show_page)

function handle_student_show_page(){
  tables_initialization();
  show_student_profile_option();

}
function tables_initialization(){

  $('#student-record-table table').DataTable({
    searching: false,
    paging: false
  });

  $('#student-course-sequence-table table').DataTable({
    searching: false,
    paging: false
  });

  show_student_schedule();
  $("#student-schedule").hide();
  $('#student-course-sequence-table').hide()
}

function show_student_schedule(){
  var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();

  $('#student-schedule').fullCalendar({
    header: false,
    defaultView: "agendaWeek",
    weekends: false,
    minTime: "08:00:00",
    maxTime: "21:00:00",
    slotDuration: "00:15:00",
    slotLabelFormat: 'h(:mm)a',
    events: [
      {
        title: "dsadada",
        start: new Date(y, m, d, 8, 45,0),
        end: new Date(y, m, d, 10, 0, 0),
        color: "red"
      }
    ]

  });
}

function show_student_profile_option(){
  // button id corresponding to tables.
  $('.student-profile-buttons div button').off().on('click', function(){
    var button_id = $(this).attr('id');
    $('.student-profile-table').hide();
    if (button_id === 'student-record-button'){
      $('#student-record-table').show();
    }
    else if (button_id === 'student-sequence-button'){
      $('#student-course-sequence-table').show();
    }
    else if (button_id === 'student-schedule-button'){
      $('#student-schedule').show();
    }
  })
}
