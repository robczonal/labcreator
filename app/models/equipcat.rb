class Equipcat < ActiveRecord::Base
  attr_accessible :name
  has_many :equipment
  has_and_belongs_to_many :procedurexes
end
