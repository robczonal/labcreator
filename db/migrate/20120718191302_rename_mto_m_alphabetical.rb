class RenameMtoMAlphabetical < ActiveRecord::Migration
  def change
    rename_table :projects_analyses, :analyses_projects
  end
end
