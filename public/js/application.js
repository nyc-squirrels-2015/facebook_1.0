$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('.profile_pic').on('click', function(event){
    console.log("im here");
    event.preventDefault();
    $('.hidden_form').show();
  })

  $('.hidden_form').on("submit", function(event){
    event.preventDefault();
    $('.hidden_form').hide();
    var $target = $(event.target)
    console.log("hey hey")
    $.ajax({
      data: $target.serialize(),
      url: $target.attr('action'),
      type: "put",
      success: function(response){
        $(".profile_pic").attr('src', response.url)
      }
    })
  })

  $('.photo_displayed').on('click', function(event){
    event.preventDefault();
    $target = $(event.target)

  })



  // display images on the main page
});
