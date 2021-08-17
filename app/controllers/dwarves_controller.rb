class DwarvesController < ApplicationController
  def index
    @dwarves = Dwarf.all
  end

  def new
    @dwarf = Dwarf.new
  end

  def create
    @dwarf = Dwarf.new(dwarf_params)
    @dwarf.user_id = current_user.id
    @dwarf.save
    # no need for app/views/dwarfs/create.html.erb
    redirect_to dwarves_path
  end

  private

  def dwarf_params
    params.require(:dwarf).permit(:nickname, :size, :gender, :description, :photo, :price_per_hour, :location)
  end
end
