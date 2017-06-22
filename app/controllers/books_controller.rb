class BooksController < ApplicationController




  def new
    @book = Book.new
  end


  def create
    @book = Book.create(book_params)

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

  private
    def book_params
      params.require(:book_title, :author, :description).permit(:series_title, :year, :image)
    end
        # user_id: params[user_id],
end
# end
