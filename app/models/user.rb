class User < ActiveRecord::Base
  ROLES = %w[administrator user]

  attr_accessible :name, :role
end
