class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])
    @book.save
    redirect_to book_path(@book)
  end

  def edit
    @book = Book.find(params[:book])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(params[:book])
    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :author, :isbn)
  end
end
