$(document).ready(handle_student_registration_page)
$(document).on('page:load', handle_student_registration_page)

function handle_student_registration_page(){
  $('#current-course-offered-table table').DataTable({
    paging: false
  });

  preference_handler()
}

function preference_handler(){
  $("#weekday-selection").selectize({
    delimiter: ',',
    maxItems: 5
  })
  $("#time-selection").selectize({
    delimiter: ',',
    maxItems: 2
  })
}
