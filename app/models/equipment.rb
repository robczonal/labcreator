class Equipment < ActiveRecord::Base
  
  attr_accessible :alert, :availability, :depth, :description, :externallink, :height, :name, :picture, :price, :type, :width
  has_many :procedurexes
end
