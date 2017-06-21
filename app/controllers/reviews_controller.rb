class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end
  def create
    @review = Review.create({
      review: params["review"],
      user_id: params[user_id],
      book_id: params[book_id]

      })

      redirect_to user_path(user)
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
