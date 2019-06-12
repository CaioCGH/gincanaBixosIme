class Profile < ApplicationRecord
    has_many :rel_user_prof, dependent: :destroy
end
