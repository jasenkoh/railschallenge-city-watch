class CreateResponders < ActiveRecord::Migration
  def change
    create_table :responders, id: false do |t|
      t.string :type
      t.string :name
      t.integer :capacity
      t.boolean :on_duty, default: false, null: false
      t.string :emergency_code, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :responders, :name, unique: true
  end
end
