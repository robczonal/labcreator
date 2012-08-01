class Ingredients < ActiveRecord::Base
  belongs_to :equipcat
  belongs_to :procedurex
  attr_accessible :notes, :quantity, :procedurex_id, :equipcat_id, :ingredients_id
  validates :equipcat_id, :presence => true
  validates :procedurex_id, :presence => true
  validates :quantity, :presence => true
end
