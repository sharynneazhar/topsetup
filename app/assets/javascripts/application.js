//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets

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
});
