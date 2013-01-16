class Loan < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  attr_accessible :book_id, :user_id, :due, :last_renewal_on, :renewal_count

  validates :book_id, :user_id, :due, :presence => true
  validates :book_id, :uniqueness => { :scope => :user_id }
end
