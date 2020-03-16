class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_many :orders
  has_many :favorites
end
