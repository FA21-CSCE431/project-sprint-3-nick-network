class NewsPost < ApplicationRecord
    validates :name, presence: true
    validates :userID, presence: true
    validates :title, presence: true
    validates :description, presence: true

    has_many :comments, dependent: :destroy

end
