class Analysis < ActiveRecord::Base
  attr_accessible :name, :project_ids
  has_many :procedurexes
  has_and_belongs_to_many :projects
  validates :name, :presence => true
end
