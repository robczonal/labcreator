class Equipcat < ActiveRecord::Base
  attr_accessible :name
  has_many :equipment
  has_many :ingredients
end
