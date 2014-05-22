# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

// Handle the case when form was submitted before uploading has finished
$(document ).ready(function() {
    $(":file").change(function () {
        alert("Display image")
            if (this.files && this.files[0]) {
                var reader = new FileReader();
                reader.onload = imageIsLoaded;
                reader.readAsDataURL(this.files[0]);
            }
        });
    

    function imageIsLoaded(e) {
        $('#myImg').attr('src', e.target.result);
    };
});


