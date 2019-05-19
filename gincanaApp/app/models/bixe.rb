class Bixe < ApplicationRecord
	validates :name, presence: true, length: {in: 5..90}
	validates :telephone, length: {in: 9..12}, format: {with: /[0-9]*/}
	validates :course, format: {with: /Aplicada|BCC|BMAC|Estat|Lic|Lic Noturno|Pura/}

end
