class CreateProcedurexEquipmentJoinTable < ActiveRecord::Migration
  def change
    create_table :procedurexes_equipment, :id => false do |t|
      t.integer :procedurex_id
      t.integer :equipment_id
    end
  end
end
