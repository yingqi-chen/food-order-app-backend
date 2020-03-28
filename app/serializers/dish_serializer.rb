class DishSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :price
  has_many :orders
end
