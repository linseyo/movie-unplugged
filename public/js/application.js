$(document).ready(function() {
  $('#get-new-movie-form').on("click",  function(event){
    event.preventDefault();
    $.ajax({
      url: '/movies/new',
      method: 'GET'
    }).done(function(response){
      console.log(response);
      $('#show-new-search').hide()
      $('#show-new-search').html(response);
      $('#show-new-search').slideToggle();
    })
  })
});
