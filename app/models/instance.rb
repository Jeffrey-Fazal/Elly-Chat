class Instance < ApplicationRecord
  belongs_to :user
  belongs_to :profile
  belongs_to :bot
  has_many :messages
end
