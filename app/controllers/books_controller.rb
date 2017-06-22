class BooksController < ApplicationController

  before_action :check_if_logged_in, only: [:new, :create]


  def new
    @book = Book.new
  end

  # if params[:file].present?
  #   # perform file upload
  #   req = Cloudinary::Uploader.upload params[:file]
  #   @user.image = req['public_id']
  # end


  def create
    @book = Book.create({
      book_title: params[:book]["book_title"],
      series_title: params[:book]["series_title"],
      author: params[:book]["author"],
      description: params[:book]["description"],
      year: params[:book]["year"],
      user_id: @current_user.id,
      image: params[:book]["image"],
      })
      if params[:file].present?
      # perform file upload
        req = Cloudinary::Uploader.upload params[:file]
        @book.image = req['public_id']
      end
      @book.save
      redirect_to user_path(@current_user)
  end


  # def update
  #
  #   @book = Book.find params[:id]
  #
  #   @book = Book.update({
  #     book_title: params["book_title"],
  #     series_title: params["series_title"],
  #     author: params["author"],
  #     description: params["description"],
  #     year: params["year"],
  #     image: params["image"],
  #     user_id: @current_user.id
  #     })
  #
  #     @book.save
  #
  # end
  # Probably don't want this edit. Don't want users editing a books details. Admin only function.
  # def edit
  # end


  # def update
  # end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find params[:id]
  end


  def destroy
    Book.find params["id"]
  end

end
