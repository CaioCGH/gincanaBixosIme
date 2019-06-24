class NewcomerSendsTask < ApplicationRecord
    has_one_attached :photo
    belongs_to :task
    belongs_to :newcomer

    validates :index, presence: true, length: {in: 1..2}
    validates :photo, content_type: ["image/png", "image/jpeg"]
end
