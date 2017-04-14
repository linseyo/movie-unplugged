require 'omdbapi'
require 'sinatra/json'

post '/movies' do
  query = params[:search_query]
  movie = Movie.new
  @result = movie.get_movie("#{query}")
  # @result.each do |movie_title|
  #   Movie.find_or_create_by(title: movie_title)
  # end
  p @result
  erb :'movies/_display', layout: false
end

get '/movies/new' do
  erb :'movies/_new', layout: false
end

get '/movies/:id' do
  @movie = Movie.find(params[:id])
  erb :'movies/show'
end
