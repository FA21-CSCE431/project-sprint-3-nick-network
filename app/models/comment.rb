class Comment < ApplicationRecord
  self.primary_key = "id"
  belongs_to :news_post
  #ActiveRecord::Base.has_many :news_comments
  #ActiveRecord::Base.has_many :news_post, :through => :news_comments
end
