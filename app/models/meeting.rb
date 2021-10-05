class Meeting < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :meeting_date, presence: true
end