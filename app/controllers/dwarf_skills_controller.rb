class DwarfSkillsController < ApplicationController
  def new
    @dwarf = Dwarf.find(params[:dwarf_id])
    @dwarf_skill = DwarfSkill.new
  end

  def create
    @dwarf = Dwarf.find(params[:dwarf_id])
    @skills = Skill.where(id: params[:dwarf_skill][:skill])
    @skills.each do |skill|
      dwarf_skill = DwarfSkill.new(dwarf: @dwarf, skill: skill)
      dwarf_skill.save
    end
    redirect_to dwarf_path(@dwarf)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
