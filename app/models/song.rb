class Song < ActiveRecord::Base
    include ActiveModel::Validations
#   validates :title, presence: true
  validates :title, on: :create, title: true
  validates :artist_name, presence: true
  validates :genre, presence: true
  validates :released, inclusion: { in: [true, false] }
  validates :release_year, release_year: true
#   validates :release_year, format: { with: /[0-9]/}
#   validates :release_year, format: { with: /[0-9]/},
#     if: Proc.new { |song| 
#         song.released == true && song.release_year.to_i <= Date.today.year.to_i
#     }
end


    #   title: "Talisman",
    #     artist_name: "Air",
    #     release_year: 2007,
    #     released: true,
    #     genre: "Post-Rock"