class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.date :due
      t.date :last_renewal_on
      t.integer :renewal_count
      t.references :user
      t.references :book

      t.timestamps
    end
    add_index :loans, :user_id
    add_index :loans, :book_id
  end
end
