class AddColumnToIngredients < ActiveRecord::Migration
  def up
    add_column :ingredients, :unit, :string
  end

  def down
    remove_column :ingredients, :unit
  end
end
