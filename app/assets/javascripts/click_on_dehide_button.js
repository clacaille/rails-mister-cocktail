$(document).ready(function() {
  $('#button-ingredient').click(function(event) {
    $('.add-ingredient').toggleClass("hidden");
    $('html, body').animate({
      scrollTop: $('#new_dose').offset().top
    }, 500)
  });
});
