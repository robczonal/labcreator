class Ingredients < ActiveRecord::Base
  belongs_to :equipcat
  belongs_to :procedurex
  
end
