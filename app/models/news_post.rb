class NewsPost < ApplicationRecord
    validates :name, presence: true
    validates :userID, presence: true
    validates :title, presence: true
    validates :description, presence: true

    ActiveRecord::Base.has_many :comments
    #ActiveRecord::Base.has_many :news_comments
    #ActiveRecord::Base.has_many :comment, :through => :news_comments
end
