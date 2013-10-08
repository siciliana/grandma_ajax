$(document).ready(function() {

  $("form").on("submit", function(event) {    
    event.preventDefault();
    var data = $(this).serialize();
    var url = $(this).attr('action')
    $.post(url, data, function(response){
      $('form').append(response);

    });
  });

$("form").on("submit", function(event) {    
    event.preventDefault();
    var data = $(this).serialize();
    var url = $(this).attr('action')
    $.post(url, data, function(response){
      $('p').delay(1800).hide(response);

    });
  });




  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
