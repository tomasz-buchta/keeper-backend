class Note < ApplicationRecord
  include PgSearch

  validates :title, length: { minimum: 10 }
  enum state: [:active, :complete, :archived]
  has_many :comments, dependent: :delete_all

  pg_search_scope :search_for, against: %i(title body)
  acts_as_taggable
end
