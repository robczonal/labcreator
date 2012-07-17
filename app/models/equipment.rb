class Equipment < ActiveRecord::Base
  attr_accessible :alert, :availability, :depth, :description, :externallink, :height, :name, :picture, :price, :type, :width
  has_and_belongs_to_many :procedurexes
  validates :name, :presence => true
end
