class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie 

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, presence: true
end


# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.


