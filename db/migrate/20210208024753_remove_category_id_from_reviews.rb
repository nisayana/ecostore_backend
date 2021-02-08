class RemoveCategoryIdFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :category_id, :bigint
  end
end
