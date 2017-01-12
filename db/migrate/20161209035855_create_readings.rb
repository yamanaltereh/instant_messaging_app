class CreateReadings < ActiveRecord::Migration[5.0]
  def change
    create_table :readings do |t|
      t.references :message, :message, index: true, null: false
      t.references :user, :user, index: true, null: false
      t.timestamps
    end
  end
end
