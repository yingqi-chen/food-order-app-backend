class OrderSerializer < ActiveModel::Serializer
  attributes :id, :date, :status
  belongs_to :user
  has_many :dishes
end
