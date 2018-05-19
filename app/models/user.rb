class User < ApplicationRecord
  has_many :weeks
  has_many :days

end
