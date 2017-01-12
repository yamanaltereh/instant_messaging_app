class CreateUserConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_conversations do |t|
      t.references :conversation, :conversation, index: true, null: false
      t.references :user, :user, index: true, null: false
      t.integer :last_message_id_seen, index: true, null: false
      t.timestamps
    end
  end
end
