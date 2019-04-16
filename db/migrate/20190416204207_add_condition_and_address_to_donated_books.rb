class AddConditionAndAddressToDonatedBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :donated_books, :book_condition, :string, default: 'Good (G)'
    add_column :donated_books, :address, :string
  end
end
