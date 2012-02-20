class CreateModifiers < ActiveRecord::Migration
  def change
    create_table :modifiers do |t|
      t.string :type
      t.integer :amount

      t.timestamps
    end
  end
end
