class Sport < ApplicationRecord
	validates :name, presence: true, length: {maximum: 90}, uniqueness: true
end
