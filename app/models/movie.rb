class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  has_and_belongs_to_many :lists

  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true
end

# You can’t delete a movie if it is referenced in at least one bookmark.