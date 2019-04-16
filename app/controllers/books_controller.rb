class BooksController < ApplicationController

  def index
    @books = Book.all
    render json: @books
  end

  def create
    @user = User.find(user_params)
    @user.update(credits: @user.credits += 1)
    @book = Book.create(book_params)
    @donated_book = DonatedBook.create(book_params)
    @user.donated_books << @donated_book
    render json: @book
  end

  private

  def book_params
    params.require(:book).permit(:title, :authors, :publisher, :publishDate, :description, :imageURL)
  end

  def user_params
    params.require(:user_id)
  end
end
