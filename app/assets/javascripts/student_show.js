$(document).ready(handle_student_show_page)
$(document).on('page:load', handle_student_show_page)

function handle_student_show_page(){
  show_student_schedule();
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

  $('#student-record-table table').hide()
  $('#student-course-sequence-table').hide()
}
var test = []
function show_student_schedule(){


  $.ajax({
    url: "/scheduler_generator/student_registered_courses",
    type: "GET",
    success: function(data){
      var time_events = [];
      for (var i = 0; i < data.length; i ++){
        time_events = time_events.concat(construct_class_object(data[i]))
      }
      $('#student-schedule').append("<div id='schedule'></div>").show();

      option = $("#student-schedule").find("#schedule")
      option.fullCalendar({
        header: false,
        defaultView: "agendaWeek",
        weekends: false,
        minTime: "08:00:00",
        maxTime: "23:00:00",
        slotDuration: "00:15:00",
        slotLabelFormat: 'h(:mm)a',
        events: time_events
      })
    }
  });

}


function construct_class_object(object){
  var mapping = {"Monday": 1, "Tuesday": 2, "Wednesday": 3, "Thrusday": 4, "Friday": 5};
  var date = new Date();
  var d = date.getDate();
  var m = date.getMonth();
  var y = date.getFullYear();
  var events = []
  var name = object.course_name
  var location = object.location
  var professor = object.professor
  var lecture = object.lecture
  if (lecture.day != null || lecture.day != undefined){
    var lecture_day = lecture.day.split(" - ");
    var lecture_time = lecture.time.split(" - ");
    start_time = get_time(lecture_time[0]);
    end_time = get_time(lecture_time[1]);
    for (var i = 0; i < lecture_day.length; i++){
      events.push(
        {
          title: "Lecture "+ name + " Professor: " + professor + " Location: " + location,
          start: new Date(y, m, d + (mapping[lecture_day[i]] - date.getDay()), start_time[0], start_time[1], 0),
          end: new Date(y, m, d + (mapping[lecture_day[i]] - date.getDay()), end_time[0], end_time[1], 0),
          color: "red"
        }
      )
    }
  }
  var tutorial = object.tutorial;
  if (tutorial.day != null || tutorial.day != undefined){
    tutorial_time = tutorial.time.split(" - ");
    start_time = get_time(tutorial_time[0]);
    end_time = get_time(tutorial_time[1]);
    events.push(
      {
        title: "Tutorial " + name,
        start: new Date(y, m, d + (mapping[tutorial.day] - date.getDay()), start_time[0], start_time[1], 0),
        end: new Date(y, m, d + (mapping[tutorial.day] - date.getDay()), end_time[0], end_time[1], 0),
        color: "blue"
      }
    )
  }
  var lab = object.lab;
  if (lab.day != null || lab.time != undefined){
    lab_time = lab.time.split(" - ");
    start_time = get_time(lab_time[0]);
    end_time = get_time(lab_time[1]);
    events.push(
      {
        title: "Lab " + name,
        start: new Date(y, m, d + (mapping[lab.day] - date.getDay()), start_time[0], start_time[1], 0),
        end: new Date(y, m, d + (mapping[lab.day] - date.getDay()), end_time[0], end_time[1], 0),
        color: "green"
      }
    )
  }
  return events
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
