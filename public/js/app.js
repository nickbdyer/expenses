$(document).on('ready', function() {
  $('form').on('submit', function(event) {
    event.preventDefault();
    console.log($(this).serializeArray()); 
  });
});
