class Dish < ApplicationRecord
    has_many :order_dishes
    has_many :favorite_dishes
    has_many :orders, through: :order_dishes
    has_many :favorites, through: :favorite_dishes
end
