class User < ApplicationRecord
  has_many :weeks
  has_many :days
  has_secure_password

end
