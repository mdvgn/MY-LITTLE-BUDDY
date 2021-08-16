class Dwarf < ApplicationRecord
  belongs_to :user
  has_many :skills, through: :dwarf_skills
end
