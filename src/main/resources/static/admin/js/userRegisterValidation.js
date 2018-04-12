(function($) {
    'use strict';
    $(function() {
        // validate the comment form when it is submitted
        // validate signup form on keyup and submit
        $('#userFormRegistration').validate({
            rules: {
                name: "required",
                surname: "required",
                age: {
                    required: true,
                    min: 18
                },
                email: "required",
                phoneNumber:"required",
                hashPassword:"required"

            },
            messages: {
                name: "Please enter your name",
                surname: "Please enter your surname",
                age: {
                    required: "Please enter your age",
                    min: "only +18"
                },
                email: "Please enter your email",
                phoneNumber:"Please enter your phone number",
                hashPassword:{
                    required: "Please enter password",
                    minlength: "Password at least must contain 5 symbols"
                }
            }
        });

    });
})(jQuery);
