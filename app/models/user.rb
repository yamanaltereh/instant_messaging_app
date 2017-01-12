class User < ApplicationRecord
  has_many :conversations, through: :user_conversations
end
