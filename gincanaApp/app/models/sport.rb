class Sport < ApplicationRecord
	has_many :sport_interests_newcomer, dependent: :destroy
	validates :name, presence: true, length: {maximum: 90}, uniqueness: true
end
