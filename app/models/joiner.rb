class Joiner < ApplicationRecord
  belongs_to :order
  belongs_to :item

  def item_name
    self.item.name
  end

  def item_price
    self.item.price
  end

  def item_image
    self.item.image
  end
  
end
