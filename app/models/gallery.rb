# frozen_string_literal: true

class Gallery < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  has_one_attached :photo

  validates :photo, attached: false, content_type: ['image/png', 'image/jpg', 'image/jpeg']
end
