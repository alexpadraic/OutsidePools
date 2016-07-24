$(document).ready(function() {

  $('#contact-driver-button a').on('click', function(event){
    event.preventDefault();
    // debugger;
    var s= this.parentElement.parentElement.children[5];
    $(s).toggleClass('hidden');
  });
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
