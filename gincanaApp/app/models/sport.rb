class Sport < ApplicationRecord
	has_many :rel_bixe_sports, dependent: :destroy
	validates :name, presence: true, length: {maximum: 90}, uniqueness: true
end
