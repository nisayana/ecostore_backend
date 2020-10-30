class JoinerSerializer < ActiveModel::Serializer
  attributes :id, order_id
  belongs_to :order
  belongs_to :item
end
