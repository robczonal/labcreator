class CreateTestxes < ActiveRecord::Migration
  def change
    create_table :testxes do |t|
      t.string :name
      t.references :analysis

      t.timestamps
    end
    add_index :testxes, :analysis_id
  end
end
