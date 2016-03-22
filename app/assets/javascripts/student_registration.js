$(document).ready(handle_student_registration_page)
$(document).on('page:load', handle_student_registration_page)

function handle_student_registration_page(){
  $('#current-course-offered-table table').DataTable({
    paging: false
  });

  preference_handler();
}

function preference_handler(){
  var day_data = undefined;
  var time_data = undefined;
  $("#weekday-selection").selectize({
    allowEmptyOption: true,
    delimiter: ',',
    maxItems: 5,
    onChange: function(data){
      day_data = data;
    }
  });
  $("#time-selection").selectize({
    allowEmptyOption: true,
    delimiter: ',',
    maxItems: 2,
    onChange: function(data){
      time_data = data;
    }
  });

  $("#preference-submit-button").off().on("click", function(){
    if (day_data == undefined || day_data.length == 5){
      day_data = "all";
    }
    if (time_data == undefined){
      time_data = "all";
    }
    var credit = $("#max-credit").text();
    if (credit == ""){
      curedit = "0.0"
    }
    $.ajax({
      url: "/scheduler_generator/preference_generator",
      method: "GET",
      dataType: "json",
      data: {days: day_data, time: time_data},
      success: function(data){
        console.log(data);
      }
    });
  })
}
