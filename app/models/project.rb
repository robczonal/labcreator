class Project < ActiveRecord::Base
  attr_accessible :client, :deadline, :description, :email, :location, :name, :analysis_ids, :testx_ids, :procedurex_ids, :basket_ids, :baskets_attributes
  has_and_belongs_to_many :analyses
  has_and_belongs_to_many :testxes
  has_and_belongs_to_many :procedurexes
  has_many :comments, :dependent => :destroy
  has_many :baskets
  validates :name, :presence => true
  accepts_nested_attributes_for :baskets, :reject_if => lambda { |a| a[:quantity].blank? }
end
