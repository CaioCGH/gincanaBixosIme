class Course < ApplicationRecord
	has_many :newcomers, dependent: :destroy
end
