class Procedurex < ActiveRecord::Base
  belongs_to :testx
  attr_accessible :astmip, :description, :name, :subtype
end
