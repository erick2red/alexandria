class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :keywords
      t.string :authors
      t.string :editorial
      t.integer :year

      t.timestamps
    end
  end
end
