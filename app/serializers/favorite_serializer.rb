class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :user
  has_many :dishes
end
