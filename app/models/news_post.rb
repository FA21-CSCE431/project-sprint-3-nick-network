# frozen_string_literal: true

class NewsPost < ApplicationRecord
<<<<<<< HEAD
    validates :name, presence: true
    validates :userID, presence: true
    validates :title, presence: true
    validates :description, presence: true

    has_many :comments, dependent: :destroy

=======
  validates :name, presence: true
  validates :userID, presence: true
  validates :title, presence: true
  validates :description, presence: true
>>>>>>> dev
end
