class CreateEquipcats < ActiveRecord::Migration
  def change
    create_table :equipcats do |t|
      t.string :name

      t.timestamps
    end
  end
end
