class Testx < ActiveRecord::Base
  belongs_to :analysis
  has_many :procedurexes
  attr_accessible :name, :analysis_id
  validates :name, :presence => true
  validates :analysis_id, :presence => true
end
