class Testx < ActiveRecord::Base
  belongs_to :analysis
  has_many :procedurexes
  attr_accessible :name
end
