require 'omdbapi'
require 'sinatra/json'

post '/movies' do
  query = params[:search_query]
  movie = Movie.new
  @result = movie.get_movie("#{query}")
  erb :'movies/_display', layout: false
end

get '/movies/new' do
  erb :'movies/_new', layout: false
end

get '/movies/:id' do
end
