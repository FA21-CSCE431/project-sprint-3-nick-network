# frozen_string_literal: true

class Meeting < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :meeting_date, presence: true
  validates :location, presence: true
  has_one_attached :photo

  validates :photo, attached: false, content_type: ['image/png', 'image/jpg', 'image/jpeg']
end
