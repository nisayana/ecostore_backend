class Review < ApplicationRecord
  belongs_to :user
  belongs_to :category

  def user_name
    self.user.username
  end
end
