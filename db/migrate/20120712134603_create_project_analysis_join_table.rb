class CreateProjectAnalysisJoinTable < ActiveRecord::Migration
  def change
    create_table :projects_analyses, :id => false do |t|
      t.integer :project_id
      t.integer :analysis_id
    end
  end
end
