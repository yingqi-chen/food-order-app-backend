class Order < ApplicationRecord
    belongs_to :user
    has_many :order_dishes
    has_many :dishes, through: :order_dishes
    validates_inclusion_of :status, :in => ['submitted', 'finished']
    validates :date, :user_id,  presence: true

    scope :submitted,-> { where(status: 'submitted') }
    scope :finished,-> { where(status: 'finished') }

    def total
        self.dishes.reduce(0){|sum,dish|sum+dish.price}
    end


end
