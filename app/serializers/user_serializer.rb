class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :donated_books
end
