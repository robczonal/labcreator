class Equipment < ActiveRecord::Base
  attr_accessible :alert, :availability, :depth, :description, :externallink, :height, :name, :picture, :price, :type, :width, :equipcat_id
  belongs_to :equipcat
  has_many :baskets
  validates :name, :presence => true
  validates :height, :presence => true
  validates :width, :presence => true
  validates :depth, :presence => true
  
#  validates :equipcat_id, :presence => true
end
