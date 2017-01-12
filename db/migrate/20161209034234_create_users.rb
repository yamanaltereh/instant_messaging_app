class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :name, null: false
      t.integer :email, null: false

      t.timestamps
    end
  end
end
