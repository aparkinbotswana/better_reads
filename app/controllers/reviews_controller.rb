class ReviewsController < ApplicationController

  before_action :check_if_logged_in, only: [:new, :create]

  def new
    @review = Review.new
  end


  def create

    # raise 'hell'

    @review = Review.new(review_params)

    @review.user = @current_user
    @review.book_id = params[:book_id]

    @review.save


      redirect_to book_path(params[:book_id])
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

  private
    def review_params
      params.require(:review).permit(:review)
    end

end
