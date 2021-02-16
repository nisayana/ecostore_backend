class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :item_id, :user_id, :user_name
end
