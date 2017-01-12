class AddTables < ActiveRecord::Migration[5.0]
  def change
    # create_table :users do |t|
    #   t.integer :name, null: false
    #   t.integer :email, null: false
    #   t.timestamps
    # end

    # create_table :conversations do |t|
    #   t.references :author, references: :users, index: true, null: false
    #   t.timestamps
    # end

    # create_table :users_conversations do |t|
    #   t.integer :conversation_id, null: false
    #   add_reference :conversation_id, :conversation, index: true, null: false
    #   add_reference :user_id, :user, index: true, null: false
    #   t.timestamps
    # end

    # create_table :messages do |t|
    #   add_reference :conversation_id, :conversation, index: true, null: false
    #   add_reference :sender_id, :user, index: true, null: false
    #   t.string :text
    #   t.timestamps
    # end

    # create_table :readings do |t|
    #   add_reference :message_id, :message, index: true, null: false
    #   add_reference :user_id, :user, index: true, null: false
    #   t.timestamps
    # end
  end
end
