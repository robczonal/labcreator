class AddColumnToEquipment < ActiveRecord::Migration
  def up
    add_column :equipment, :equipcat_id, :integer
  end

  def down
    remove_column :equipment, :equipcat_id
  end
end
