class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description
  has_many :items
end
