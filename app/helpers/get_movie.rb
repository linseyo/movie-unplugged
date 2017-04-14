require 'omdbapi'
require 'HTTParty'

class Movie

  def initialize
    @all_movies = []
  end

  def get_movie(query)
    response = OMDB.search(query)
  # HTTParty.get("http://www.omdbapi.com/?t=#{query}")
    response.each do |movie|
      if movie[:type] == "movie"
        @all_movies << movie
      end
    end
    @all_movies
  end

end



