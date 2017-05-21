require 'securerandom'
class User < ApplicationRecord
	has_many :cars
	before_create do|user|
		user.auth_token= user.generate_auth_key
	end

	def generate_auth_key
		loop do 
			token = SecureRandom.base64.tr('+/=','Qrt')
			break token unless User.exists?(auth_token: token)
		end
	end
end
