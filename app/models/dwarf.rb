class Dwarf < ApplicationRecord
  belongs_to :user
  has_many :dwarf_skills, dependent: :destroy
  has_many :skills, through: :dwarf_skills
  has_many :reviews, through: :rent
  has_many_attached :photos
  validates :nickname, presence: true, uniqueness: true
  validates :user_id, uniqueness: true
end
