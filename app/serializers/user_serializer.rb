class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :first_name, :last_name, :email, :address, :city, :state, :zip, :current_order, :past_orders
  # has_many :reviews
end
