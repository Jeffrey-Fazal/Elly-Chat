class Message < ApplicationRecord
  belongs_to :user
  belongs_to :profile
  belongs_to :bot
  belongs_to :instance
end
