class OrderSerializer < ActiveModel::Serializer
  attributes :id, :date, :status, :total
  belongs_to :user
  has_many :dishes
end
