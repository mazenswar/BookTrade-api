class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :authors, :publisher, :publishDate, :description, :imageURL
end
