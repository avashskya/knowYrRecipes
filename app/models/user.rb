class User < ApplicationRecord
  has_many :recipes
  has_many :comments
  include Clearance::User
end
