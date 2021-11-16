# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  has_one_attached :photo

  validates :photo, attached: false, content_type: ['image/png', 'image/jpg', 'image/jpeg']
end
