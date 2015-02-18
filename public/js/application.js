$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('.profile_pic').on('click', function(event){
    console.log("im here");
    event.preventDefault();
    $('.hidden_form').toggle();
  })

  $('.hidden_form').submit(function(){
    event.preventDefault();
    $.ajax({
      data: this.serialize(),
      url: this.attr('action'),
      type: this.attr('method'),
      success: function(response){
        $('#cadre img').attr('href', response.url )
      }
    })
  })
});
