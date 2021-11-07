# frozen_string_literal: true

class Member < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :meeting_date, presence: true
  validates :location, presence: true
end
