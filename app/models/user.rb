class User < ActiveRecord::Base
  has_many :movies, through: :user_movies
end
