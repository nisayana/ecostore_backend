class User < ApplicationRecord
    has_secure_password
    after_create
    # validates :username, uniqueness: :true
    has_many :orders

    def current_booking
        current_booking = self.orders.find_or_create_by(order_status: false)
        OrderSerializer.new(current_booking)
    end

    def past_bookings
        all_past_bookings = self.orders.where(order_status: true)
        all_past_bookings.map do |order|
            OrderSerializer.new(order)
        end
    end

    private

    def set_current_booking
        self.orders.create
    end
end
