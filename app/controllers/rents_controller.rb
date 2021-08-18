class RentsController < ApplicationController
  def index
    @rents = Rent.all
  end

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
      redirect_to user_rents_path(current_user.id)
    else render:new
    end
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy

    # no need for app/views/rents/destroy.html.erb
    redirect_to user_rents_path(current_user.id)
  end

  private

  def rent_params
    params.require(:rent).permit(:start_date, :end_date, :dwarf_id)
  end
end
