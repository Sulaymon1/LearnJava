(function($) {
    'use strict';
    $(function() {
        // validate the comment form when it is submitted
        $("#newCourse").validate({
          errorPlacement: function(label, element) {
            label.addClass('mt-2 text-danger');
            label.insertAfter(element);
          },
          highlight: function(element, errorClass) {
            $(element).parent().addClass('has-danger')
            $(element).addClass('form-control-danger')
          }
        });
        // validate signup form on keyup and submit
        $('#newCourseForm').validate({
            rules: {
                courseName: "required",
                shortDescription: "required",
                duration: {
                    required: true,
                    minlength: 2
                },
                about: "required"
            },
            messages: {
                courseName: "Please enter course name",
                shortDescription: "Please enter short description of course",
                duration: {
                    required: "Please enter duration",
                    minlength: "Duration at least must be 90 min"
                },
                about: "Please enter about course"
            },
            errorPlacement: function(label, element) {
              label.addClass('mt-2 text-danger');
              label.insertAfter(element);
            },
            highlight: function(element, errorClass) {
              $(element).parent().addClass('has-danger')
              $(element).addClass('form-control-danger')
            }
        });

    });
})(jQuery);
