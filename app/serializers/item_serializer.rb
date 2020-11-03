class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price, :category_id
  belongs_to :category
end
