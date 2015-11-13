$(document).ready(function() {

  $('.no-js').removeClass('no-js').addClass('js')

  var currentTime = new Date().getHours();
  if (currentTime >= 20 || currentTime <= 6) {
    // $('body').addClass('darkmode')
  }

  setTimeout(function() {
    $(".logo").removeClass("fade-in");
  }, 1660); // 750 + 910, keep in sync with _logo-animation.scss

});
