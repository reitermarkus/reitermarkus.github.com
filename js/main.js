$(document).ready(function() {

  document.addEventListener('touchstart', function(){}, true);

  $('.no-js').removeClass('no-js').addClass('js')

  setTimeout(function() {
    $('.logo').removeClass('fade-in');
  }, (750 + 910)); // keep in sync with logo.scss

});
