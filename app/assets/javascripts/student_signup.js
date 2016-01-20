$(document).ready(handle_sign_up_page);
$(document).on('page:load', handle_sign_up_page);

function handle_sign_up_page(){
  $("#student_department").selectize();
}
