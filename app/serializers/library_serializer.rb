class LibrarySerializer < ActiveModel::Serializer
  attributes :id, :name
  # has_one :user
  # has_many :fundraiser
end
