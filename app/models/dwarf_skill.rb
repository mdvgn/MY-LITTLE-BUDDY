class DwarfSkill < ApplicationRecord
  belongs_to :dwarf
  belongs_to :skill
  validates :skill, uniqueness: { scope: :dwarf }
end
