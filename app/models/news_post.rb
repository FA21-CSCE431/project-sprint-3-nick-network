class NewsPost < ApplicationRecord
    validates :name, presence: true
    validates :userID, presence: true
    validates :title, presence: true
    validates :description, presence: true
end
