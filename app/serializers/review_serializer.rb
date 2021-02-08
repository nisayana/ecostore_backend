class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :category_id, :user_id, :user_name
end
