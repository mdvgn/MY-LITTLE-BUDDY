class Skill < ApplicationRecord
  has_many :dwarf_skills, dependent: :destroy
  has_many :dwarves, through: :dwarf_skills
end
