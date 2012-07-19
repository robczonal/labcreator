class Project < ActiveRecord::Base
  attr_accessible :client, :deadline, :description, :email, :location, :name, :analysis_id
  has_and_belongs_to_many :analyses
  validates :name, :presence => true
end
