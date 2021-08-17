class Dwarf < ApplicationRecord
  belongs_to :user
  has_many :skills, through: :dwarf_skill
  has_many :reviews, through: :rent
  has_many_attached :photos
  validates :nickname, presence: true, uniqueness: true
end
