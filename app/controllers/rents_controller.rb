class RentsController < ApplicationController
  def new
    @rent = Rent.new
    @dwarf = Dwarf.find(params[:dwarf_id])
  end

  def create
    @dwarf = Dwarf.find(params[:dwarf_id])
    @rent = Rent.new(rent_params)
    @rent[:dwarf_id] = @dwarf.id
    @rent[:user_id] = current_user.id
    if @rent.save
      redirect_to dwarves_path
    else render:new
    end
  end

  private

  def rent_params
    params.require(:rent).permit(:start_date, :end_date, :dwarf_id)
  end
end

  # def create
  #   @dwarf = Dwarf.find(params[:dwarf_id])
  #   @skills = Skill.where(id: params[:dwarf_skill][:skill])
  #   @skills.each do |skill|
  #     dwarf_skill = DwarfSkill.new(dwarf: @dwarf, skill: skill)
  #     dwarf_skill.save
  #   end
  #   redirect_to dwarf_path(@dwarf)
  # end
