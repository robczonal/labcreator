class DropProcedurexesEquipment < ActiveRecord::Migration
  def change
    drop_table :equipment_procedurexes
  end
end
