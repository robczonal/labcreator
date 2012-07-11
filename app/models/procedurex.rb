class Procedurex < ActiveRecord::Base
  belongs_to :testx
  has_many :equipment
  attr_accessible :astmip, :description, :name, :subtype
end
