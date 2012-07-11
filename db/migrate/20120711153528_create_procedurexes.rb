class CreateProcedurexes < ActiveRecord::Migration
  def change
    create_table :procedurexes do |t|
      t.string :name
      t.string :astmip
      t.string :subtype
      t.text :description
      t.references :testx

      t.timestamps
    end
    add_index :procedurexes, :testx_id
  end
end
