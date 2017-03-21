$(document).ready(function () {
  $('#new-request-button').on('submit', function(event) {
    event.preventDefault();
    var $form = $(this)
    var url = $form.attr('action')
    $.ajax({
      url: url,
      method: 'GET'
    }).done(function(response) {
      $form.hide();
      $('.button').append(response)
    })
  })
});
