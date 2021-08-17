class SkillsController < ApplicationController
  class ReviewsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(params)
    if @skill.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    @skill.update(skill: params[:skill])
  redirect_to skill_path(@skill)
  end

  def delete
    Skill.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private
  def params
    params.require(:skill).permit(:skill)
  end
end

end
