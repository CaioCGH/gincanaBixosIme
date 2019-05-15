class User < ApplicationRecord
    has_secure_password

    validates :email,
    presence: true, 
    length: { in: 3..254 }, 
    uniqueness: true

end
