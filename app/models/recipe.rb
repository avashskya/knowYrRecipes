class Recipe < ApplicationRecord
  validates :user, presence: true
  validates :name, presence: true
  validates :ingredients, presence: true
  validates :instruction, presence: true
  belongs_to :user
  acts_as_punchable
end
