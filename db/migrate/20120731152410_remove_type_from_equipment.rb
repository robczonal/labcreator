class RemoveTypeFromEquipment < ActiveRecord::Migration
  def up
    remove_column :equipment, :type
  end

  def down
    add_column :equipment, :type, :string
  end
end
