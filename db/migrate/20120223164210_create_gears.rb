class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :name
      t.string :slot
      t.boolean :equipped
      t.integer :character_id

      t.timestamps
    end
  end
end
