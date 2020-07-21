class Song < ApplicationRecord

    validates :title, presence: true, uniqueness: { scope: :release_year, message: "should happen once per year" }

    validates :released, inclusion: { in: [true, false] }

    validates :release_year, presence: true, numericality: { less_than_or_equal_to: Date.current.year }, unless: -> { !released }

    validates :artist_name, presence: true

end
