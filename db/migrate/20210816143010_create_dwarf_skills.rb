class CreateDwarfSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :dwarf_skills do |t|
      t.references :dwarf, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
