class Dwarf < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :dwarf_skills, dependent: :destroy
  has_many :skills, through: :dwarf_skills
  has_many :reviews, through: :rent
  has_many_attached :photos
  validates :nickname, presence: true, uniqueness: true
  validates :user_id, uniqueness: true

  # multisearchable against: [:skill, :location]
  pg_search_scope :global_search, against: [:location],
                  associated_against: {
                    skills: [ :skill]
                  },
                  using: { tsearch: { prefix: true } }
end
