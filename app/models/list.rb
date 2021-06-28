class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_and_belongs_to_many :movies

  validates :name, uniqueness: true
  validates :name, presence: true

end

