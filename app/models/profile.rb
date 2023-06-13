class Profile < ApplicationRecord
  belongs_to :user
  has_many :instances
  has_many :messages
end
