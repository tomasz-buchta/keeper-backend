class Comment < ApplicationRecord
  include PgSearch

  belongs_to :note

  multisearchable against: %i(body)
end
