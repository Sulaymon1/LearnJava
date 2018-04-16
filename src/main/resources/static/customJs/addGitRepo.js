(function($) {
  showSwal = function(type){
        'use strict';
      if(type === 'custom-html'){
        	swal({
                content: {
                    element: "input",
                    attributes: {
                        placeholder: "Enter git repo",
                        type: "text",
                        class: 'form-control'
                    },
                },
                button: {
                    type: "submit",
                    text: "OK",
                    value: true,
                    visible: true,
                    className: "btn btn-primary"
                }
            })
    	}
        }

})(jQuery);
