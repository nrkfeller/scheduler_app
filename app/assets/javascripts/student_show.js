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
  })

  $('#student-course-sequence-table table').DataTable({
    searching: false,
    paging: false
  })

  $('#student-course-sequence-table').hide();

  $('#student-schedule-table').hide();
  $('#student-schedule-table').show();
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
      $('#student-schedule-table').show();
    }
  })
}
