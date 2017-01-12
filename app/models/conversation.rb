class Conversation < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :users, through: :user_conversations
end
