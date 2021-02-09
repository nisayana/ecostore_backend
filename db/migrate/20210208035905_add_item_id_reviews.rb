class AddItemIdReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :item_id, :bigint
  end
end
