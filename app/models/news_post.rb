class NewsPost < ApplicationRecord
    validates :userID, presence: true
    validates :title, presence: true
    validates :description, presence: true
end
