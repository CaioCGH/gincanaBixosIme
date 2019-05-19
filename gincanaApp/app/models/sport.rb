class Sport < ApplicationRecord
	validates :name, presence: true, length: {maximum: 90}, uniquesses: true
end
