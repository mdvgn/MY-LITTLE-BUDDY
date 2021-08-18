class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @rent = Rent.find(params[:rent_id])
  end

  def create
    @rent = Rent.find(params[:rent_id])
    @review = Review.new(review_params)
    @review[:rent_id] = @rent.id
    if @review.save
      redirect_to dwarves_path
    else
      render :action => 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(comment: params[:review][:comment], rating: params[:review][:rating])
  redirect_to review_path(@review)
  end

  def delete
    Review.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def review_params
    params.require(:review).permit(:rent_id, :comment, :rating)
  end
end
