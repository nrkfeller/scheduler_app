$(document).ready(handle_student_show_page)

function handle_student_show_page(){
  $('#student-record').DataTable({
    searching: false,
    paging: false
  })
}
