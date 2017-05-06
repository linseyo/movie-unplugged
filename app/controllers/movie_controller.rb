require 'omdbapi'
require 'sinatra/json'

post '/movies' do
  query = params[:search_query]
  movie = GetMovie.new
  @found_movies = []
  @result = movie.get_movie("#{query}")
  @result.each do |movie|
    searched_movie = Movie.find_or_create_by(title: movie.title) do |new_movie|
      new_movie.year = movie.year,
      new_movie.poster = movie.poster
      end
      p searched_movie
    @found_movies << searched_movie
  end
  @found_movies
  erb :'movies/_display', layout: false
end

get '/movies/new' do
  erb :'movies/_new', layout: false
end

get '/movies/:id' do
  movie = GetMovie.new
  searched_movie = Movie.find(params[:id])
  movie_title = searched_movie.title
  @movie = movie.movie_plot(movie_title)
  erb :'movies/show', :layout => false 
end
