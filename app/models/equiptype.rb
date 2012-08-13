class Equiptype < ActiveRecord::Base
  has_many :equipcats
  attr_accessible :name
end
