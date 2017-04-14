require 'omdbapi'
require 'sinatra/json'

get '/movies' do
  query = params[:search_query]
  movie = Movie.new
  @result = movie.get_movie("#{query}")
  p @result.class
  p @result
end
