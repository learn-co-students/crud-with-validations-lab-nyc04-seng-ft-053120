class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: { scope: [:release_year, :artist_name] }
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, numericality: { less_than_or_equal_to: 2020, allow_nil: true }
  validates :artist_name, presence: true
  validate :no_blank_year
  

  def no_blank_year
    if self.released == true && self[:release_year].blank?
      errors.add(:release_year, "must have a date if song has been released")
    end
  end


end
