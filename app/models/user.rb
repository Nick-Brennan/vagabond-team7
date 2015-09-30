class User < ActiveRecord::Base
	has_attached_file :avatar, styles: {medium: "300x300>", thumb: "100x100"}, default_url: ":style/missing.png"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/


	attr_accessor :city_name
	has_secure_password
	has_many :posts
	belongs_to :city
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
