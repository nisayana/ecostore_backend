class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :category_id
  belongs_to :category
end
