class Equiptype < ActiveRecord::Migration
  def change
    create_table :equiptypes, :id => false do |t|
      t.string :name
    end
  end
end
