class TransactionsController < ApplicationController

  def new
    @user = current_user
    @book = Book.find(params[:book_id])
    @transaction = Transaction.new
  end

  def create
    @user = current_user
    @book = Book.find(params[:book_id])
    @transaction = Transaction.new(transaction_params)
    @transaction.book = @book
    @transaction.user = @user
    @transaction.save
    redirect_to books_path(@book)
  end

  def validate
    offer = current_user.Book.find(params[:id])
    offer.accept
  end

  def decline
    offer = current_user.Book.find(params[:id])
    offer.reject
  end
  
  private

  def transaction_params
    params.require(:transaction).permit(:start_date, :end_date)
  end
end
