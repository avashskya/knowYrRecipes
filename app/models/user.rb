class User < ApplicationRecord
  has_many :recipes
  include Clearance::User
end
