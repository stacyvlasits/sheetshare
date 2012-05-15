class RemoveCharacterIdFromModifiers < ActiveRecord::Migration
  def up
    remove_column :modifiers, :character_id
      end

  def down
    add_column :modifiers, :character_id, :integer
  end
end
