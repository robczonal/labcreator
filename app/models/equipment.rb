class Equipment < ActiveRecord::Base
  belongs_to :procedurex
  attr_accessible :alert, :availability, :depth, :description, :externallink, :height, :name, :picture, :price, :type, :width
end
