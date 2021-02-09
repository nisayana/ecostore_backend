class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :overview, :price, :category_id
  belongs_to :category
end
