class RemoveProcedurexFromEquipment < ActiveRecord::Migration
  def up
    remove_column :equipment, :procedurex_id
  end

  def down
    add_column :equipment, :procedurex_id
  end
end
