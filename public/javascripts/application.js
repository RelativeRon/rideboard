$(document).ready(function() {
  var intervalId = setInterval(function() {
    $('.poll_to_load').each(function() {
      var target = $(this).attr('data-poll-target');
      var elem = this;
      poll(target, function(html) {
        $(elem).replaceWith(html);
      });
    });
  }, 1000);
  setTimeout(function() {
    clearInterval(intervalId);
  }, 20 * 1000);
});

function poll(target, func) {
 $.ajax({
   type: "GET",
   url: target,
   dataType: 'json',
   success: function(jsonObj){
     var html = $.mustache(jsonObj.template, jsonObj.view);
     func(html);
   },
   error: function(xhr, textStatus, error) {
     // no-op for now
   }
 });
}

$.fn.extend({
  clear: function() {
    var context = $(this);
    $('input[type=text], textarea', context).each(function() {
      this.value = '';
    });
  }
});
