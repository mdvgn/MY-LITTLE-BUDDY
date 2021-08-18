class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params)
    if @review.save
      redirect_to :action => 'index'
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
  def params
    params.require(:review).permit(:rent_id, :comment, :rating)
  end
end
