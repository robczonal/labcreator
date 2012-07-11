class Project < ActiveRecord::Base
  attr_accessible :client, :deadline, :description, :email, :location, :name
end
