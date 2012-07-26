class Procedurex < ActiveRecord::Base
  belongs_to :testx

  #Here I think we need to use has_many  :equipcat :through => :ingredients
  #this is because we need to be able to have more than one piece of equipment of the same category
  #for 1 procedure e.g. 2 identical water baths
  
  has_many :ingredientss
  attr_accessible :astmip, :description, :name, :subtype, :testx_id, :equipcat_ids
  validates :name, :presence => true
end
