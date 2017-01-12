class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :conversation, :conversation, index: true, null: false
      t.references :sender, :user, index: true, null: false
      t.string :text
      t.timestamps
    end
  end
end
