class DonatedBooksController < ApplicationController

  def index
    @donated_books = DonatedBook.all
    render json: @donated_books
  end

  def show
    @donated_book = DonatedBook.find(donated_params[:id])
    render json: @donated_book
  end

  def update
    @donated_book = DonatedBook.find(donated_params[:id])
    @donated_book.update(address: donated_params[:address])
    render json: @donated_book
  end

  private

  def donated_params
    params.permit(:id, :title, :authors, :publisher, :publishDate, :description, :imageURL, :book_condition, :address)
  end

end
