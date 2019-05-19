class Task < ApplicationRecord
	#validates :name, presence: true
	#validates :description, presence: true
	#validates :score_type, presence: true
	#validates :have_score, presence: true
	#validates :group, presence: true
	#validates :send, presence: true 
	validates :max_send, numericality: { greater_than_or_equal_to: 0 }
	#validates :have_feedback, presence: true
end
