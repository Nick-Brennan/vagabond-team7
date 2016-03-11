class User < ActiveRecord::Base
	has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100"}, default_url: ":style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
	has_secure_password


	attr_accessor :city_name

	belongs_to :city
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
