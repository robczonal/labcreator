class Procedurex < ActiveRecord::Base
  belongs_to :testx
  has_and_belongs_to_many :equipment
  attr_accessible :astmip, :description, :name, :subtype
end
