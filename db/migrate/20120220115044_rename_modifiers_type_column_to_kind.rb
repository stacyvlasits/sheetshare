class RenameModifiersTypeColumnToKind < ActiveRecord::Migration
  def up
    rename_column :modifiers, :type, :kind
  end

  def down
    rename_column :modifiers, :kind, :type
  end
end
