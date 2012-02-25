class RenameModifiablesTypeColumnAndModifiablesIdColumnToModifiableTypeColumnAndModifiableIdColumn < ActiveRecord::Migration
  def up
    rename_column :modifiers, :modifiables_type, :modifiable_type
    rename_column :modifiers, :modifiables_id, :modifiable_id
  end

  def down
    rename_column :modifiers, :modifiable_type, :modifiables_type
    rename_column :modifiers, :modifiable_id, :modifiables_id
  end
end
