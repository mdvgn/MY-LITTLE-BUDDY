class DwarvesController < ApplicationController
  def index
    @dwarves = Dwarf.all
    @markers = @dwarves.geocoded.map do |dwarf|
    {
      lat: flat.latitude,
      lng: flat.longitude
    }
#     if params[:search].present?
#       @dwarves = Dwarf.joins(:skills).where(skills: { skill: params[:search]})
#     else
#       @dwarves = Dwarf.all

    end
  end

  def new
    @dwarf = Dwarf.new
  end

  def show
    @dwarf = Dwarf.find(params[:id])
  end

  def create
    @dwarf = Dwarf.new(dwarf_params)
    @dwarf.user_id = current_user.id
    @dwarf.save

    redirect_to dwarves_path
  end

  def edit
    @dwarf = Dwarf.find(params[:id])
  end

  def update
    @dwarf = Dwarf.find(params[:id])
    @dwarf.update(dwarf_params)

    redirect_to dwarves_path
  end

  def destroy
    @dwarf = Dwarf.find(params[:id])
    @dwarf.destroy

    redirect_to dwarves_path
  end

  private

  def dwarf_params
    params.require(:dwarf).permit(:nickname, :size, :gender, :description, :price_per_hour, :location, photos: [])
  end
end
