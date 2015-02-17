$(document).on('ready', function() {
  $('form').on('submit', function(event) {
    event.preventDefault();
    $.post('/', $('form').serialize(), function(data) {
      var data = JSON.parse(data);
      $('#expense_list').prepend('<li class="expense_item">£' + data["amount"] +
          ' - ' + data["category"] + '</li>');
    });
  });
});
