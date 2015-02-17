$(document).on('ready', function() {
  $('form').on('submit', function(event) {
    event.preventDefault();
    $.post('/', $('form').serialize(), function(val) {
      console.log(val)
    });
  });
});
