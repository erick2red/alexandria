class Book < ActiveRecord::Base
  attr_accessible :authors, :description, :editorial, :keywords, :title, :year

  validates :authors, :description, :editorial, :keywords, :title, :year, :presence => true
  validates :title, :uniqueness => true
end
