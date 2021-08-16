class User < ApplicationRecord
    has_secure_password
    after_create
    # validates :username, uniqueness: :true
    has_many :orders

    def current_order
        current_order = self.orders.find_or_create_by(order_status: false)
        OrderSerializer.new(current_order)
    end

    def past_orders
        all_past_orders = self.orders.where(order_status: true)
        all_past_orders.map do |order|
            OrderSerializer.new(order)
        end
    end

    private

    def set_current_order
        self.orders.create
    end
end
