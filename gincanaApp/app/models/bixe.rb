class Bixe < ApplicationRecord
	has_many :bixe_sends_tasks, dependent: :destroy
	has_many :rel_bixe_sports,  dependent: :destroy
	belongs_to :team
	belongs_to :course
	has_one :rel_user_bixe, dependent: :destroy
	validates :name, presence: true, length: {in: 5..90}
	validates :telephone, length: {in: 9..12}, format: {with: /[0-9]*/}

end
