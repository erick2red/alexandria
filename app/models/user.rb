class User < ActiveRecord::Base
  ROLES = %w[administrator user]

  attr_accessible :name, :role

  has_many :loans
  has_many :books, :through => :loans
end
