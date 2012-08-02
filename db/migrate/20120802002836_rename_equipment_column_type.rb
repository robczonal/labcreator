class RenameEquipmentColumnType < ActiveRecord::Migration
  def change
    rename_column :equipment, :type, :eqtype
  end

end
