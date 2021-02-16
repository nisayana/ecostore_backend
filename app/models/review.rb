class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item

  def user_name
    self.user.username
  end
end
