class Note < ApplicationRecord
  validates :title, length: { minimum: 10 }
  enum state: [:active, :complete, :archived]
  has_many :comments, dependent: :delete_all
  acts_as_taggable
end
