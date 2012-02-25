class AddTypeColumnToModifiers < ActiveRecord::Migration
  def up
    add_column :modifiers, :modifiables_type, :string 
    add_column :modifiers, :modifiables_id, :integer  
  end
  def down
    remove_column :modifiers, :modifiable_type
    remove_column :modifiers, :modifiable_id
  end
end
