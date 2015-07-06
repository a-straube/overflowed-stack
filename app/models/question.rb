class Question < ActiveRecord::Base
  validates :name, :presence => true
  validates :question, :presence => true

  has_many :comments
end
