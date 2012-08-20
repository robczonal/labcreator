class AddColumnToEquipcat < ActiveRecord::Migration
  def up
    add_column :equipcats, :equiptype_id, :integer
  end

  def down
    remove_column :equipments, :equiptype_id
  end
end
