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
                about: "required",
                startDate: "required"
            },
            messages: {
                courseName: "Введите название курса",
                shortDescription: "Введите краткое описание курса",
                about: "Пожалуйста, введите информацию о курсе",
                startDate: "Укажите дату"
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
