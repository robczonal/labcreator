class Testx < ActiveRecord::Base
  belongs_to :analysis
  has_many :procedurexes
  has_and_belongs_to_many :projects
  attr_accessible :name, :analysis_id, :project_ids
  validates :name, :presence => true
  validates :analysis_id, :presence => true
end
