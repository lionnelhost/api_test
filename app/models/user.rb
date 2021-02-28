class User < ApplicationRecord

  extend Devise::Models #added this line to extend devise model
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable
  include DeviseTokenAuth::Concerns::User

  has_one :profile
  
  
end
