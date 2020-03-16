class User < ApplicationRecord
    has_secure_password
    
    has_many :orders
    has_many :favorites

    validates :name, :email, :password_digest, presence: true

end
