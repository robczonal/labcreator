class ProcedurexesProjects < ActiveRecord::Migration
  def change
    create_table :procedurexes_projects, :id => false do |t|
      t.integer :procedurex_id
      t.integer :project_id
    end
  end
end
