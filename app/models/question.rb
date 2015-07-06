class Question < ActiveRecord::Base
  validates :name, :presence => true
  validates :question, :presence => true
end
