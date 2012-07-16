class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :client
      t.string :location
      t.string :email
      t.text :description
      t.date :deadline
      
      t.timestamps
    end
  end
end
