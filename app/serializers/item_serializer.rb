class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :overview, :price, :category_id, :reviews
  belongs_to :category
end
