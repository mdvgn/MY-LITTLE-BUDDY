class DwarvesController < ApplicationController
  def index
    search = params[:search]
    if search.present?
      if search[:skill].empty? && !search[:location].empty?
        @dwarves = Dwarf.global_search(search[:location])
        create_markers(@dwarves)
      elsif !search[:skill].empty? && search[:location].empty?
        @dwarves = Dwarf.global_search(search[:skill])
        create_markers(@dwarves)
      elsif !search[:skill].empty? && !search[:location].empty?
        dwarf_skill = Dwarf.global_search(search[:skill])
        dwarf_location = Dwarf.global_search(search[:location])
        @dwarves = (dwarf_skill & dwarf_location)
        create_markers(@dwarves)
      elsif search[:skill].empty? && search[:location].empty?
        @dwarves = Dwarf.all
        create_markers(@dwarves)
      end
      else
        @dwarves = Dwarf.all
        create_markers(@dwarves)
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

  def create_markers(dwarves)
    if dwarves != []
      @markers = dwarves.geocoded.map do |dwarf|
        {
          lat: dwarf.latitude,
          lng: dwarf.longitude,
          info_window: render_to_string(partial: "info_window", locals: { dwarf: dwarf }),
          image_url: helpers.asset_url('dwarf-logo.png')
        }
      end
    end
  end

  def dwarf_params
    params.require(:dwarf).permit(:nickname, :size, :gender, :description, :price_per_hour, :location, photos: [])
  end
end
