class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_status, :total
  # belongs_to :user
  has_many :joiners
  # has_many :items, through: :joiners
end
