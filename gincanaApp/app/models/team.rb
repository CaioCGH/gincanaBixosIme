class Team < ApplicationRecord
	has_many :bixes
	validates :name, presence: true, length: {maximum: 50}, uniqueness: true
	validates :score, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
