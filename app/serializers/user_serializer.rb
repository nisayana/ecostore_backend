class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :current_booking, :past_booking
  has_many :orders
end
