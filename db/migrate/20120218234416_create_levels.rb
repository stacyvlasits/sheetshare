class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :class

      t.timestamps
    end
  end
end
