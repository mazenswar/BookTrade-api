class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :authors
      t.string :publisher
      t.string :publishDate
      t.string :description
      t.string :imageURL
      t.string :isbn
      t.string :book_condition, default: 'Good (G)'
      t.timestamps
    end
  end
end
