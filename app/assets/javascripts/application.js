// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

  var formElement = 0;

$( document ).ready(function() {
  bindFormListeners();

});

var bindFormListeners = function(){
  $('.form-wrapper').on('click', "button", function(e){
    e.preventDefault();
    var nextDiv = $('.form-wrapper .hidden').eq(formElement);
    formElement += 1;
    nextDiv.removeClass('hidden');
    $(this).parent().addClass('hidden');
    // $(this).hide();
  });
}
