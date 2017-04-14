require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :movies, through: :user_movies


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(input_password)
    if self.password == input_password
      self
    else
      nil
    end
  end
end
