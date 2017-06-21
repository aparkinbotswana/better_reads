class ReviewsController < ApplicationController

  def create
    @review = Review.create (user_params)
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
