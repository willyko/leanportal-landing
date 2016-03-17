$(document).ready( function () {
  console.log( "test");

  function checkForm(form)
  {
    form.myButton.disabled
  }

  $("#new-visitor")
    .bind("ajax:success", function (xhr, data, status) {
      console.log("SUCCESS")
    });

});

