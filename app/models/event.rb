class Event < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :event_date, presence: true
end