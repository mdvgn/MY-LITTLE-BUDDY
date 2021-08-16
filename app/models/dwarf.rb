class Dwarf < ApplicationRecord
  belongs_to :user
  has_many :skills, through: :dwarf_skill
  has_many :reviews, through: :rent
end
