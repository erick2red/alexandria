class Loan < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  attr_accessible :due, :last_renewal_on, :renewal_count
end
