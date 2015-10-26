class Admin < ActiveRecord::Base
	attr_accessor :gauth_token
  devise :google_authenticatable, :confirmable, :lockable, :timeoutable,
         :recoverable, :rememberable, :trackable, :validatable

end
