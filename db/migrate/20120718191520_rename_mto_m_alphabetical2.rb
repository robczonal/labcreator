class RenameMtoMAlphabetical2 < ActiveRecord::Migration
  def change
    rename_table :procedurexes_equipment, :equipment_procedurexes
  end

end
