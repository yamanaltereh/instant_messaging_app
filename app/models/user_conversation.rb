class UserConversation < ApplicationRecord
  belongs_to :user_id, class_name: 'User'
  belongs_to :conversation_id, class_name: 'Conversation'
end
