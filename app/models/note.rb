class Note < ApplicationRecord
  enum state: [:active, :complete, :archived]
  has_many :comments
  acts_as_taggable
end
