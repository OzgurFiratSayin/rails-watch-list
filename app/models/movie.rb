class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  before_destroy :check_for_references
  

  def check_for_references
    if bookmarks.count > 0
      return false
    end
  end
end
