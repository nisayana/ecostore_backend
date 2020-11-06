class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :current_booking, :past_bookings
  # has_many :orders
end
