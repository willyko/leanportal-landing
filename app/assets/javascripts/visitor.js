
$(document).on({
  ajaxStart: function() { $('.spinner').show(); },
  ajaxStop: function() { $('.spinner').hide(); },
  ready: function() {
    $('.spinner').hide();
    $('#thankyou').hide();
   }
});

