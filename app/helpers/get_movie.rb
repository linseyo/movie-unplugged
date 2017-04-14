require 'omdbapi'
require 'HTTParty'

class Movie

  def initialize
    @results = []
  end

  def get_movie(query)
    response = OMDB.search(query)
  # HTTParty.get("http://www.omdbapi.com/?t=#{query}")
    response.each do |movie|
      @results << movie[:title]
    end
    @results
  end

end



