//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require dropzone

$(document).ready(function(){
  $('.btn-favorite').hover(function() {
    $('.btn-favorite i').hasClass('fa-heart-o') ?
      $('.btn-favorite i').removeClass('fa-heart-o').addClass('fa-heart') :
      $('.btn-favorite i').removeClass('fa-heart').addClass('fa-heart-o');
  });

  $('.btn-favorite').click(function() {
    $('.btn-favorite i').hasClass('fa-heart-o') ?
      $('.btn-favorite i').removeClass('fa-heart-o').addClass('fa-heart') :
      $('.btn-favorite i').removeClass('fa-heart').addClass('fa-heart-o');
  });

  // var dropzone = new Dropzone(".dropzone");
  // return dropzone.on("success", function(file, response) {
  //   var imageUrl = response.file_name.url;
  // });


  $(".setup-description-form").hide();

  $(".setup-description button").click(function() {
    $(".setup-description-text").toggle();
    $(".setup-description-form").toggle();
  });

  $("#saveDescription, #cancelDescription").click(function() {
    $(".setup-description-form").hide();
    $(".setup-description-text").show();
  });
  
});
