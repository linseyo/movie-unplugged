require 'omdbapi'
require 'HTTParty'

class Movie

  def initialize
    @results = []
  end

  # def parse_data(query)
  #   @result = get_movie(query)
  # end


  def get_movie(query)
    response = OMDB.search(query)
  # HTTParty.get("http://www.omdbapi.com/?t=#{query}")
    response.each do |movie|
      @results << movie[:title]
    end
    @results
   #   p pr
 #  #   p "=========================="
 #  # end
 #  p @response
 #  p "=========================="
 # p @response[0]
 # p "=========================="
 # p @response['Title']
  end

end



