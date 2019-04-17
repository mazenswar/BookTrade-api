class DonatedBookSerializer < ActiveModel::Serializer
  attributes :id, :title, :authors, :publisher, :publishDate, :imageURL, :description, :book_condition, :address
end
