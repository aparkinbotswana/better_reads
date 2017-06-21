class BooksController < ApplicationController

  def create
    @book = Book.create (user_params)
  end


  def edit
    @book = Book.find params["id"]
  end


  # def update
  #   @book.update user_params
  #   redirect_to user_path( params["id"] )
  #
  # end


  def show
  end


  def destroy
    Book.find params["id"]

  end
end
