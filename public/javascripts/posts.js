$(document).ready(function() {

  $('input#post_submit').click(function(event) {
    event.preventDefault();
    var path = $('form#new_post').attr('action');
    var data = $('form#new_post').serialize();

    $.ajax({
      url: path,
      type: 'POST',
      data: data,
      dataType: 'json',
      success: function(post) {
        if (post.title != undefined) {
          $('#posts').prepend(post.html);
        }
        else {
          alert(post.errors);
        }
      },
      error: function(xhr, statusText) {
        alert(xhr.status);
      }
    });
  });
  
});
