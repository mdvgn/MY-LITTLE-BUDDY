class Dwarf < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :dwarf_skills, dependent: :destroy
  has_many :skills, through: :dwarf_skills
  has_many :reviews, through: :rent
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :nickname, presence: true, uniqueness: true
  validates :user_id, uniqueness: true

  pg_search_scope :global_search,
                  against: [ :location ],
                  associated_against: {
                    skills: [ :skill]
                  },
                  using: { tsearch: { prefix: true } }
end
