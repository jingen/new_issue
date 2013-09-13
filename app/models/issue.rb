class Issue < ActiveRecord::Base
  validates_presence_of :title, :description
  belongs_to :project
end
