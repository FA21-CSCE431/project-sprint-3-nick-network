# frozen_string_literal: true

class Member < ApplicationRecord
  validates :name, presence: true, format: {with: /ni[c|k]/i, message: "Name must be a variation of Nick (must contain \"nic\" or \"nik\")"}
  # validates :description, presence: true
  # validates :birthday, presence: true
  # validates :classification, presence: true
  # validates :major, presence: true
  validates :email, presence: true
  # validates :phone, presence: true
end
