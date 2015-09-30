class City < ActiveRecord::Base
  has_many :users
  has_many :posts

	has_many :posts
	has_many :users
end
