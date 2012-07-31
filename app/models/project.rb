class Project < ActiveRecord::Base
  attr_accessible :client, :deadline, :description, :email, :location, :name, :analysis_ids, :testx_ids, :procedurex_ids
  has_and_belongs_to_many :analyses
  has_and_belongs_to_many :testxes
  has_and_belongs_to_many :procedurexes
  has_many :comments, :dependent => :destroy
  validates :name, :presence => true
end
