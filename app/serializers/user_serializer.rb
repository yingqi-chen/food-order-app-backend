class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :orders
  has_many :favorites
end
