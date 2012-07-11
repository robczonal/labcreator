class Project < ActiveRecord::Base
  attr_accessible :client, :deadline, :description, :email, :location, :name
  has_many :analyses
end
