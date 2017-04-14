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

  $('#show-new-search').on("click", 'button', function(event){
    event.preventDefault();
    $('#display-search-results').html('')
    var searchQuery = $(event.delegateTarget).find('#searchMovie').serialize();
    $.ajax({
      url: '/movies',
      method: 'POST',
      data: searchQuery
    }).done(function(response){
      console.log(response);
      $('#show-new-search').hide();
      $('#display-search-results').hide();
      $('#display-search-results').append(response);
      $('#display-search-results').slideDown();
      $('#get-new-movie-form').fadeIn();
    });
  });


});
