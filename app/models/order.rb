class Order < ApplicationRecord
  belongs_to :user

  has_many :joiners, :dependent => :destroy
  has_many :items, through: :joiners

  def total
    self.items.sum(:price)
  end

end
