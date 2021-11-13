# frozen_string_literal: true

class Member < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :birthday, presence: true
  validates :classification, presence: true
  validates :major, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
