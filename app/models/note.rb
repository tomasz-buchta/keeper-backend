class Note < ApplicationRecord
  enum state: [:active, :complete, :archived]
  has_many :comments, dependent: :delete_all
  acts_as_taggable
end
