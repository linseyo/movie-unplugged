$(document).ready(function() {
  $('#get-new-movie-form').on("click",  function(event){
    event.preventDefault();
    $.ajax({
      url: '/movies/new',
      method: 'GET'
    }).done(function(response){
      console.log(response);
      $('#get-new-movie-form').hide();
      $('#show-new-search').hide();
      $('#show-new-search').html(response);
      $('#show-new-search').slideToggle();
    });
  });

  $('#show-new-search').on("click", function(event){
    event.preventDefault();
    $.ajax({
      url: '/movies'
      method: 'GET'
    })
  })









});
