$(document).ready(function() {
  $('#get-new-movie-form').on("click",  function(event){
    event.preventDefault();
    $.ajax({
      url: '/movies/new',
      method: 'GET'
    }).done(function(response){
      $('#get-new-movie-form').slideUp();
      $('#show-new-search').hide();
      $('#show-new-search').html(response);
      $('#show-new-search').slideDown();
    });
  });

  // $('#show-new-search').on("click", function(event){
  //   event.preventDefault();

  //   $.ajax({
  //     url: '/movies'
  //     method: 'GET'
  //   })
  // })









});
