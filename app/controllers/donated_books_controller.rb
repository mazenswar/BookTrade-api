class DonatedBooksController < ApplicationController

  def index
    @donated_books = DonatedBook.all
    render json: @donated_books
  end
end
