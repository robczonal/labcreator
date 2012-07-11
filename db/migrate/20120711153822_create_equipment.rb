class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :availability
      t.float :height
      t.float :width
      t.float :depth
      t.float :price
      t.string :externallink
      t.string :picture
      t.text :description
      t.text :alert
      t.string :type

      t.timestamps
    end
    add_index :equipment, :procedurex_id
  end
end
