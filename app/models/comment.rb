# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :news_post_id, presence: true

  self.primary_key = 'id'
  belongs_to :news_post
end
