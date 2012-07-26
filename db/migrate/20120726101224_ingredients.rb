class Ingredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.text :notes
      t.integer :quantity
      t.references :procedurex 
      t.references :equipcat
      
      t.timestamps
    end
  end
end
