class BooksController < ApplicationController

  def new
    @book = Book.new
  end


  def create
    @book = Book.create({
      series_title: params["series_title"],
      book_title: params["book_title"],
      author: params["author"],
      year: params[year],
      description: params["description"],
      image: params["image"],
      user_id: params[user_id],
      })

      redirect_to user_path(user)
  end

  # Probably don't want this edit. Don't want users editing a books details. Admin only function.
  # def edit
  # end


  # def update
  # end


  def show
  end


  def destroy
    Book.find params["id"]

  end
end
