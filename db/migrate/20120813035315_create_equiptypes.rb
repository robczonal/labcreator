class CreateEquiptypes < ActiveRecord::Migration
  def change
    create_table :equiptypes do |t|

      t.timestamps
    end
  end
end
