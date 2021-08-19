class DwarvesController < ApplicationController
  def index
    if params[:search].present?
      @dwarves = Dwarf.joins(:skills).where(skills: { skill: params[:search]})
    else
      @dwarves = Dwarf.all
      @markers = @dwarves.geocoded.map do |dwarf|
      {
        lat: dwarf.latitude,
        lng: dwarf.longitude,
        info_window: render_to_string(partial: "info_window", locals: { dwarf: dwarf })
      }
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
    # photos = @dwarf.photos
    @dwarf.update(dwarf_params)
    # @dwarf.photos.push(photos)
    # raise
    # @dwarf.update(photos: @dwarf.photos)
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
