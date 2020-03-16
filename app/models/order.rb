class Order < ApplicationRecord
    belongs_to :user
    has_many :order_dishes
    has_many :dishes, through: :order_dishes
    validates_inclusion_of :status, :in => ['finished', 'submitted', 'not-submitted']


    validates :date, :user_id,  presence: true


end
