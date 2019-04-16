class DonatedBookSerializer < ActiveModel::Serializer
  attributes :id, :title, :authors, :publisher, :publishDate, :imageURL, :description
end
