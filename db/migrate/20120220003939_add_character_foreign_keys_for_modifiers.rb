class AddCharacterForeignKeysForModifiers < ActiveRecord::Migration
  def up
    add_column :modifiers, :character_id, :integer
  end

  def down
    remove_column :modifiers, :character_id
  end
end
