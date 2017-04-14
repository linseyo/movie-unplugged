require 'omdbapi'
require 'sinatra/json'

get '/movies' do
  query = params[:search_query]
  movie = Movie.new
  @result = movie.get_movie("#{query}")
  p @result.class
  p @result
end

get '/movies/new' do
  erb :'movies/_new', layout: false
end

get '/movies/:id' do
end
