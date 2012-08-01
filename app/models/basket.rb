class Basket < ActiveRecord::Base
  belongs_to :project
  belongs_to :procedurex
  belongs_to :equipment
  attr_accessible :quantity, :project_id, :procedurex_id, :equipment_id
  validates :quantity, :presence => true
  validates :project_id, :presence => true
  validates :procedurex_id, :presence => true
  validates :equipment_id, :presence => true  
end
