class Book < ActiveRecord::Base
  attr_accessible :authors, :description, :editorial, :keywords, :title, :year

  validates :authors, :description, :editorial, :keywords, :title, :year, :presence => true
  validates :title, :uniqueness => true

  has_many :loans
  has_many :users, :through => :loans

  has_many :comments
end
