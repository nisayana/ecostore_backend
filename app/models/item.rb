class Item < ApplicationRecord
  belongs_to :category

  has_many :reviews
  has_many :joiners, :dependent => :destroy
  has_many :orders, through: :joiners

end
