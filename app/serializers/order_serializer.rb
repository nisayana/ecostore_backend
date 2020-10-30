class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_status
  belongs_to :user
  has_many :items, through: :joiners
end
