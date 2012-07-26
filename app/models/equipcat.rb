class Equipcat < ActiveRecord::Base
  attr_accessible :name, :ingredient_ids
  has_many :equipment
  has_many :ingredientss
end
