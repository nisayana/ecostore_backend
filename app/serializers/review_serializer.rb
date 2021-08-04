class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :item_id, :user_id, :user_name
end
