class User < ApplicationRecord
    has_many :profiles
    has_many :bots
    has_many :instances
    has_many :messages
  end
  