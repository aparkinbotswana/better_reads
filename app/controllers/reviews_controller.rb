class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end
  def create
    @review = Review.create review_params
    @review.user_id(@current_user.id)
  end


  def edit
    @review = Review.find params["id"]
  end


  # def update
  #   @review.update user_params
  #   redirect_to user_path( params["id"] )
  #
  # end


  def show
  end


  def destroy
    Review.find params["id"]

  end
end
