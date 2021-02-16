class JoinerSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :item_name, :item_price, :quantity
  # belongs_to :order
  # belongs_to :item
end
