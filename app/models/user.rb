class User < ActiveRecord::Base
	attr_accessor :city_name
	has_secure_password
	has_many :posts
	validates_confirmation_of :password
	validates :email, :password, presence: true
	validates :email, uniqueness: true

	def self.confirm(params)
		user = User.find_by_email(params[:email])
		if user != nil
			user.authenticate(params[:password])
		end
	end
end
