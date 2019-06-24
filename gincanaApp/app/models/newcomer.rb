class Newcomer < ApplicationRecord
	has_many 	:newcomer_sends_tasks, dependent: :destroy
	has_many 	:sport_interests_newcomer,  dependent: :destroy
	belongs_to 	:user
	belongs_to 	:team
	belongs_to 	:course
	validates :name, presence: true, length: {in: 5..90}
	validates :telephone, length: {in: 9..12}, format: {with: /[0-9]*/}

end
