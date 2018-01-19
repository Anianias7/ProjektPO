$(document).on('turbolinks:load', function() {
  var professors;
  professors = $('#application_form_application_form_professors').html();
  console.log(professors);
  return $('#application_form_application_form_correction_course').change(function() {
    var course, options;
    course = $('#application_form_application_form_correction_course :selected').text();
    escaped_course = course.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
    options = $(professors).filter("optgroup[label=" + escaped_course + "]").html();
    console.log(options);
    if (options) {
      return $('#application_form_application_form_professors').html(options);
    } else {
      return $('#application_form_application_form_professors').empty();
    }
  });
});
