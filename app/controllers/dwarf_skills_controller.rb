class DwarfSkillsController < ApplicationController
skip_before_action :authenticate_user!
  def new
    @dwarf = Dwarf.find(params[:dwarf_id])
    @dwarf_skill = DwarfSkill.new
  end

  def create
    @dwarf = Dwarf.find(params[:dwarf_id])
    @skills = Skill.where(skill: params[:dwarf_skill][:skill])
    @skills.each do |skill|
      dwarf_skill = DwarfSkill.new(dwarf_id: @dwarf.id, skill_id: skill.id)
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
