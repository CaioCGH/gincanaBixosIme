class Task < ApplicationRecord
	has_many :newcomer_sends_tasks, dependent: :destroy
	validates :name, presence: true
	validates :description, presence: true
	validates :score_type, presence: true
	validates :max_send, numericality: { greater_than_or_equal_to: 0 }
end
