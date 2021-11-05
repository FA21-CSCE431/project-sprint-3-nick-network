class Comment < ApplicationRecord
  self.primary_key = "id"
  belongs_to :news_post

end
