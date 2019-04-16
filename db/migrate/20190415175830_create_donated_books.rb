class CreateDonatedBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :donated_books do |t|
      t.string :title
      t.string :authors
      t.string :publisher
      t.string :publishDate
      t.string :imageURL
      t.string :description
      t.integer :user_id
      t.string :book_condition, default: 'Good (G)'
      t.timestamps
    end
  end
end
