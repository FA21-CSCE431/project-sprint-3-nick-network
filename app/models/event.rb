# frozen_string_literal: true

class Event < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :date_time, presence: true
  validates :location, presence: true
end
