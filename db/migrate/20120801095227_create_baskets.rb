class CreateBaskets < ActiveRecord::Migration
  def change
    create_table :baskets do |t|
      t.references :project
      t.references :procedurex
      t.references :equipment
      t.integer :quantity

      t.timestamps
    end
    add_index :baskets, :project_id
    add_index :baskets, :procedurex_id
    add_index :baskets, :equipment_id
  end
end
