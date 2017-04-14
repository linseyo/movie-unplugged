require 'omdbapi'
require 'HTTParty'

get '/' do
 # @response = HTTParty.get('http://www.omdbapi.com/?t=Star+Wars')
 #  # @response.each do |pr|
 #  #   p pr
 #  #   p "=========================="
 #  # end
 #  p @response
 #  p "=========================="
 # p @response[0]
 # p "=========================="
 # p @response['Title']

  movie = Movie.new
  @result = movie.get_movie('Star Wars')
  p @result.class
  # result.each do |movie|
  #   p movie[:title]
  # end
  p @result
  erb :'index'
end
