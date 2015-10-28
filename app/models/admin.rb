class Admin < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :validatable,
         :lockable, :timeoutable, :recoverable, :rememberable, :trackable
end
