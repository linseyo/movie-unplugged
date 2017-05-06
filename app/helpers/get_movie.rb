require 'omdbapi'
require 'HTTParty'

class GetMovie

  def initialize
    @all_movies = []
  end

  def get_movie(query)
    results = OMDB.search(query)
  # HTTParty.get("http://www.omdbapi.com/?t=#{query}")
    results.each do |movie|
      if movie[:type] == "movie"
        @all_movies << movie
      end
    end
    @all_movies
  end

  def movie_plot(movie_title)
    plot = OMDB.title(movie_title, plot: 'full')
  end

end



