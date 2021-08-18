class Dwarf < ApplicationRecord
  belongs_to :user
  has_many :skills, through: :dwarf_skill
  has_many :dwarf_skills, dependent: :destroy
  has_many :reviews, through: :rent
  has_many_attached :photos
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :nickname, presence: true, uniqueness: true
  validates :user_id, uniqueness: true
end
