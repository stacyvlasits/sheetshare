class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :int
      t.integer :str
      t.integer :wis
      t.integer :con
      t.integer :chr
      t.integer :dex

      t.timestamps
    end
  end
end
