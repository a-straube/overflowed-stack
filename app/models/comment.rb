class Comment < ActiveRecord::Base
  validates :name, :presence => true
  validates :answer, :presence => true

  belongs_to :question 
end
