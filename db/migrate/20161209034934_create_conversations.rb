class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.references :author, references: :users, index: true, null: false

      t.timestamps
    end
  end
end
