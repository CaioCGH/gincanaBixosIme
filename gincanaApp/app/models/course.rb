class Course < ApplicationRecord
	has_many :bixes, dependent: :destroy

end
