class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :category_id
  belongs_to :category
end
