// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require bootstrap
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document ).ready(function() {
    /*$("#inlineCheckbox1").on('click',function() {
        alert("Hello");
      });*/


    
    $('input:radio#first').click(function() {
        alert("hi");
        if ($(this).val() == 'Residential') {
            alert("hello");
        }

    })
    $('input:radio#second').click(function() {
        alert("higf");
        
    })


    /*$("input[name='sample']").click(function() {
        if ($(this).val() == 'first') {alert("hey");}
	});*/
})



//= require jquery.fileupload

	// Handle the case when form was submitted before uploading has finished
	$(function () {
	$(":myFile").change(function () {
		alert("Display image")
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = imageIsLoaded;
            reader.readAsDataURL(this.files[0]);
        }
    });
});

function imageIsLoaded(e) {
    $('#myImg').attr('src', e.target.result);
};
