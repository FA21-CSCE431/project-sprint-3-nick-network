class NewscommentsController < ActiveRecord::Base

  belongs_to :news_post
  belongs_to :comments

end
