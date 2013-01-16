class Book < ActiveRecord::Base
  attr_accessible :authors, :description, :editorial, :keywords, :title, :year
end
