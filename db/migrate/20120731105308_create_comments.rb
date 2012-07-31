class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.references :project

      t.timestamps
    end
    add_index :comments, :project_id
  end
end
