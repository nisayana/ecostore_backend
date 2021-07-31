class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :first_name, :last_name, :email, :address, :current_booking, :past_bookings
  # has_many :orders
end
