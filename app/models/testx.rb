class Testx < ActiveRecord::Base
  belongs_to :analysis
  attr_accessible :name
end
