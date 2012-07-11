class Analysis < ActiveRecord::Base
  attr_accessible :name
  has_many :procedurexes
  has_many :projects
end
