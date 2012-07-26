class Equipment < ActiveRecord::Base
  attr_accessible :alert, :availability, :depth, :description, :externallink, :height, :name, :picture, :price, :type, :width, :equipcat_id
  has_and_belongs_to_many :procedurexes
  belongs_to :equipcat
  validates :name, :presence => true
end
