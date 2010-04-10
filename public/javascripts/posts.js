$(document).ready(function() {

  $('input#post_submit').click(function(event) {
    event.preventDefault();
    var $post_form = $('form#new_post')
    var path = $post_form.attr('action');
    var data = $post_form.serialize();

    $.ajax({
      url: path,
      type: 'POST',
      data: data,
      dataType: 'json',
      success: function(post) {
        if (post.title != undefined) {
          $post_form.clear();
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
