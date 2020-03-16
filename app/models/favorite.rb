class Favorite < ApplicationRecord
    belongs_to :user
    has_many :favorite_dishes
    has_many :dishes, through: :favorite_dishes

    validates :name, :user_id, presence: true


end
