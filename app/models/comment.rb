class Comment < ActiveRecord::Base
  belongs_to :project
  attr_accessible :body, :title, :project_id
  validates :title, :presence => true
  validates :body, :presence => true
end
