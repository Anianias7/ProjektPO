$(document).on('turbolinks:load', function() {
  var classroom_availabilities;
  classroom_availabilities = $('#application_form_application_form_classroom_availabilities').html();
  console.log(classroom_availabilities);
  return $('#application_form_application_form_classrooms').change(function() {
    var course, options;
    classroom = $('#application_form_application_form_classrooms :selected').text();
    escaped_classroom = classroom.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(classroom_availabilities).filter("optgroup[label=" + escaped_classroom + "]").html();
    console.log(options);
    if (options) {
      return $('#application_form_application_form_classroom_availabilities').html(options);
    } else {
      return $('#application_form_application_form_classroom_availabilities').empty();
    }
  });
});
