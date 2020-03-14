class FavoriteDish < ApplicationRecord
    belongs_to :favorite
    belongs_to :dish
end
