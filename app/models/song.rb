class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: {
    scope: [:artist_name, :release_year],
    message: "cannot be repeated by the same artist in the same year"
  }
  validates :released, inclusion: { in: [true, false] }
  validate :must_be_present_and_less_than_or_equal_to_current_year_if_released

  def must_be_present_and_less_than_or_equal_to_current_year_if_released
    if self.released && self.release_year == nil
      errors.add(:release_year, "must not be blank because song is released")
    elsif self.released && self.release_year > Time.now.year
      errors.add(:release_year, "must be less than or equal to the current year")
    end
  end
end
