class AddCharacterForeignKeys < ActiveRecord::Migration
  def up
    add_column :levels, :character_id, :integer
  end

  def down
    remove_column :levels, :character_id
  end
end
