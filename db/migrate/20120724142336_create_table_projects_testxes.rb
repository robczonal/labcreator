class CreateTableProjectsTestxes < ActiveRecord::Migration
  def change
    create_table :projects_testxes, :id => false do |t|
      t.integer :project_id
      t.integer :testx_id
    end
  end
end